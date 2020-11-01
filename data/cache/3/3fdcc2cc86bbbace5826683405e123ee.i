a:24:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:48:"Multicore processing in python - Zonal Statistic";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:60:"Calculate zonal statistic (min mean max standard deviation) ";}i:2;i:66;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:127;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:47:"cd /home/user/ost4sem/exercise/python_multicore";}i:2;i:127;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:179;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"One core";i:1;i:3;i:2;i:179;}i:2;i:179;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:179;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:179;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:"Running zonal statistical and the get the mean of the pixels fallen inside each poligon.";}i:2;i:200;}i:12;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:288;}i:2;i:5;i:3;s:3:"  
";}i:2;i:288;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:"
home/capooti/webapps/spatialecology_static/ost4sem/exercise/";}i:2;i:291;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:353;}i:15;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:84:"python zonal_stats_basic_sp.py borders_tribes.shp popc_0ADProj.tif zonal_stat_sp.txt";}i:2;i:353;}i:16;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:3551:"
from osgeo import gdal, ogr, osr
import numpy, sys
import pandas as pd

def fmtFloat (x) :
    return float("{0:.2f}".format(x))

def proc( ):
    raster = gdal.Open(input_value_raster)
    shape = ogr.Open(input_zone_polygon)
    lyr = shape.GetLayer()
    statsArr = []
    for fid in range(lyr.GetFeatureCount()):
        feat = lyr.GetFeature(fid)
    # Get extent of feat
        geom = feat.GetGeometryRef()
        if geom.GetGeometryName() == "MULTIPOLYGON":
            count = 0
            pointsX = []
            pointsY = []
            for polygon in geom:
                geomInner = geom.GetGeometryRef(count)
                ring = geomInner.GetGeometryRef(0)
                numpoints = ring.GetPointCount()
                for p in range(numpoints):
                    lon, lat, z = ring.GetPoint(p)
                    pointsX.append(lon)
                    pointsY.append(lat)
                count += 1
        elif geom.GetGeometryName() == "POLYGON":
            ring = geom.GetGeometryRef(0)
            numpoints = ring.GetPointCount()
            pointsX = []
            pointsY = []
            for p in range(numpoints):
                lon, lat, z = ring.GetPoint(p)
                pointsX.append(lon)
                pointsY.append(lat)
        else:
            sys.exit()

        xmin = min(pointsX)
        xmax = max(pointsX)
        ymin = min(pointsY)
        ymax = max(pointsY)

        # Specify offset and rows and columns to read
        xoff = int((xmin - xOrigin) / pixelWidth)
        yoff = int((yOrigin - ymax) / pixelWidth)
        xcount = int((xmax - xmin) / pixelWidth) + 1
        ycount = int((ymax - ymin) / pixelWidth) + 1

        # Create memory target raster
        target_ds = gdal.GetDriverByName("MEM").Create("", xcount, ycount, gdal.GDT_Byte)
        target_ds.SetGeoTransform((xmin, pixelWidth, 0, ymax, 0, pixelHeight))

        # Create for target raster the same projection as for the value raster
        raster_srs = osr.SpatialReference()
        raster_srs.ImportFromWkt(raster.GetProjectionRef())
        target_ds.SetProjection(raster_srs.ExportToWkt())

        # Rasterize zone polygon to raster
        gdal.RasterizeLayer(target_ds, [1], lyr, burn_values=[1])

        # Read raster as arrays
        banddataraster = raster.GetRasterBand(1)
        dataraster = banddataraster.ReadAsArray(xoff, yoff, xcount, ycount).astype(
            numpy.float
        )

        bandmask = target_ds.GetRasterBand(1)
        datamask = bandmask.ReadAsArray(0, 0, xcount, ycount).astype(numpy.float)

        # Mask zone of raster
        zoneraster = numpy.ma.masked_array(dataraster, numpy.logical_not(datamask))

        feature_stats = {
        'min': fmtFloat(numpy.min(zoneraster)),
        'mean': fmtFloat(numpy.mean(zoneraster)),
        'max': fmtFloat(numpy.max(zoneraster)),
        'std': fmtFloat(numpy.std(zoneraster)),
        'sum': fmtFloat(numpy.sum(zoneraster)),
        'fid': int(feat.GetFID())}
        statsArr.append(feature_stats)    
    return statsArr
 
# Open data
input_zone_polygon = sys.argv[1]
input_value_raster = sys.argv[2]
output_stats = sys.argv[3]

rast = gdal.Open(input_value_raster)
shp = ogr.Open(input_zone_polygon)

# Get raster georeference info
transform = rast.GetGeoTransform()
xOrigin = transform[0]
yOrigin = transform[3]
pixelWidth = transform[1]
pixelHeight = transform[5]

# Start the processes
layer = shp.GetLayer()
statsOut = proc()
dfOut = pd.DataFrame(list(statsOut))
dfOut.to_csv(output_stats,sep="\t",index=False)
";i:1;s:7:"python|";i:2;s:23:"zonal_stats_basic_sp.py";}i:2;i:447;}i:17;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4041;}i:18;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"Multi core";i:1;i:3;i:2;i:4041;}i:2;i:4041;}i:19;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4041;}i:20;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:84:"python zonal_stats_basic_my.py borders_tribes.shp popc_0ADProj.tif zonal_stat_mp.txt";}i:2;i:4063;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:3294:"
from osgeo import gdal, ogr, osr
import numpy, sys
from multiprocessing import Pool 
import pandas as pd


def fmtFloat (x) :
    return float("{0:.2f}".format(x))

def proc(fid):
    shape = ogr.Open(input_zone_polygon)
    lyr = shape.GetLayer()
    feat = lyr.GetFeature(fid)
    raster = gdal.Open(input_value_raster)
    geom = feat.GetGeometryRef()
    if geom.GetGeometryName() == "MULTIPOLYGON":
        count = 0
        pointsX = []
        pointsY = []
        for polygon in geom:
            geomInner = geom.GetGeometryRef(count)
            ring = geomInner.GetGeometryRef(0)
            numpoints = ring.GetPointCount()
            for p in range(numpoints):
                lon, lat, z = ring.GetPoint(p)
                pointsX.append(lon)
                pointsY.append(lat)
            count += 1
    elif geom.GetGeometryName() == "POLYGON":
        ring = geom.GetGeometryRef(0)
        numpoints = ring.GetPointCount()
        pointsX = []
        pointsY = []
        for p in range(numpoints):
            lon, lat, z = ring.GetPoint(p)
            pointsX.append(lon)
            pointsY.append(lat)

    else:
        sys.exit()

    xmin = min(pointsX)
    xmax = max(pointsX)
    ymin = min(pointsY)
    ymax = max(pointsY)

    # Specify offset and rows and columns to read
    xoff = int((xmin - xOrigin) / pixelWidth)
    yoff = int((yOrigin - ymax) / pixelWidth)
    xcount = int((xmax - xmin) / pixelWidth) + 1
    ycount = int((ymax - ymin) / pixelWidth) + 1

    # Create memory target raster
    target_ds = gdal.GetDriverByName("MEM").Create("", xcount, ycount, gdal.GDT_Byte)
    target_ds.SetGeoTransform((xmin, pixelWidth, 0, ymax, 0, pixelHeight))

    # Create for target raster the same projection as for the value raster
    raster_srs = osr.SpatialReference()
    raster_srs.ImportFromWkt(raster.GetProjectionRef())
    target_ds.SetProjection(raster_srs.ExportToWkt())

    # Rasterize zone polygon to raster
    gdal.RasterizeLayer(target_ds, [1], lyr, burn_values=[1])

    # Read raster as arrays
    banddataraster = raster.GetRasterBand(1)
    dataraster = banddataraster.ReadAsArray(xoff, yoff, xcount, ycount).astype(
        numpy.float
    )

    bandmask = target_ds.GetRasterBand(1)
    datamask = bandmask.ReadAsArray(0, 0, xcount, ycount).astype(numpy.float)

    # Mask zone of raster
    zoneraster = numpy.ma.masked_array(dataraster, numpy.logical_not(datamask))

    feature_stats = {
    'min': fmtFloat(numpy.min(zoneraster)),
    'mean': fmtFloat(numpy.mean(zoneraster)),
    'max': fmtFloat(numpy.max(zoneraster)),
    'std': fmtFloat(numpy.std(zoneraster)),
    'sum': fmtFloat(numpy.sum(zoneraster)),
    'fid': int(feat.GetFID())}
    return feature_stats

# Open data
input_zone_polygon = sys.argv[1]
input_value_raster = sys.argv[2]
output_stats = sys.argv[3]

rast = gdal.Open(input_value_raster)
shp = ogr.Open(input_zone_polygon)

# Get raster georeference info
transform = rast.GetGeoTransform()
xOrigin = transform[0]
yOrigin = transform[3]
pixelWidth = transform[1]
pixelHeight = transform[5]


# Start the processes
layer = shp.GetLayer()
featList = range(layer.GetFeatureCount())
p = Pool(processes=8)
pOut = p.map(proc, featList)
dfOut = pd.DataFrame(list(pOut))
dfOut.to_csv(output_stats,sep="\t",index=False)
";i:1;s:7:"python|";i:2;s:23:"zonal_stats_basic_mp.py";}i:2;i:4157;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7491;}i:23;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:7491;}}