a:22:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Some advanced modules";i:1;i:2;i:2;i:2;}i:2;i:2;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:3361:"
    """
    Creates a shaded relief ASCII grid
    from an ASCII DEM.  Also outputs
    intermediate grids for slope and
    aspect.
    """
    from linecache import getline
    import numpy as np
     
    # File name of ASCII digital elevation model
    source = "dem.asc"
    # File name of the slope grid
    slopegrid = "slope.asc"
    # File name of the aspect grid
    aspectgrid = "aspect.asc"
    # Output file name for shaded relief
    shadegrid = "relief.asc"
    ## Shaded elevation parameters
    # Sun direction
    azimuth=315.0
    # Sun angle
    altitude=45.0
    # Elevation exageration
    z=1.0
    # Resolution
    scale=1.0
    # No data value for output
    NODATA = -9999
     
    # Needed for numpy conversions
    deg2rad = 3.141592653589793 / 180.0
    rad2deg = 180.0 / 3.141592653589793
     
    # Parse the header using a loop and
    # the built-in linecache module
    hdr = [getline(source, i) for i in range(1,7)]
    values = [float(h.split(" ")[-1].strip()) for h in hdr]
    cols,rows,lx,ly,cell,nd = values
    xres = cell
    yres = cell * -1
     
    # Load the dem into a numpy array
    arr = np.loadtxt(source, skiprows=6)
     
    # Exclude 2 pixels around the edges which are usually NODATA.
    # Also set up structure for a 3x3 windows to process the slope
    # throughout the grid
    window = []
    for row in range(3):
        for col in range(3):
            window.append(arr[row:(row + arr.shape[0] - 2), \
            col:(col + arr.shape[1] - 2)])
     
    # Process each cell
    x = ((z * window[0] + z * window[3] + z * window[3] + z * window[6]) \
       - (z * window[2] + z * window[5] + z * window[5] + z * window[8])) \
      / (8.0 * xres * scale);
     
    y = ((z * window[6] + z * window[7] + z * window[7] + z * window[8]) \
       - (z * window[0] + z * window[1] + z * window[1] + z * window[2])) \
      / (8.0 * yres * scale);
     
    # Calculate slope  
    slope = 90.0 - np.arctan(np.sqrt(x*x + y*y)) * rad2deg
     
    # Calculate aspect
    aspect = np.arctan2(x, y)  
     
    # Calculate the shaded relief
    shaded = np.sin(altitude * deg2rad) * np.sin(slope * deg2rad) \
           + np.cos(altitude * deg2rad) * np.cos(slope * deg2rad) \
           * np.cos((azimuth - 90.0) * deg2rad - aspect);
    shaded = shaded * 255
     
    # Rebuild the new header
    header = "ncols        %s\n" % shaded.shape[1]
    header += "nrows        %s\n" % shaded.shape[0]
    header += "xllcorner    %s\n" % (lx + (cell * (cols - shaded.shape[1])))
    header += "yllcorner    %s\n" % (ly + (cell * (rows - shaded.shape[0])))
    header += "cellsize     %s\n" % cell
    header += "NODATA_value      %s\n" % NODATA
     
    # Set no-data values
    for pane in window:
       slope[pane == nd] = NODATA
       aspect[pane == nd] = NODATA
       shaded[pane == nd] = NODATA
     
    # Open the output file, add the header, save the slope grid
    with open(slopegrid, "wb") as f:
      f.write(header)
      np.savetxt(f, slope, fmt="%4i")
     
    # Open the output file, add the header, save the slope grid
    with open(aspectgrid, "wb") as f:
      f.write(header)
      np.savetxt(f, aspect, fmt="%4i")
     
    # Open the output file, add the header, save the array
    with open(shadegrid, "wb") as f:
      f.write(header)
      np.savetxt(f, shaded, fmt="%4i")

";i:1;s:6:"python";i:2;s:24:"| 07/01-shaded-relief.py";}i:2;i:42;}i:4;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:922:"
    """
    Use GDAL and OGR to create a contour shapefile
    """
    import gdal
    import ogr
     
    # Elevation DEM
    source = "dem.asc"
    # Output shapefile
    target = "contour"
     
     
    ogr_ds = ogr.GetDriverByName('ESRI Shapefile').CreateDataSource(target + ".shp")
    ogr_lyr = ogr_ds.CreateLayer(target, geom_type = ogr.wkbLineString25D)
    field_defn = ogr.FieldDefn('ID', ogr.OFTInteger)
    ogr_lyr.CreateField(field_defn)
    field_defn = ogr.FieldDefn('ELEV', ogr.OFTReal)
    ogr_lyr.CreateField(field_defn)
     
    # gdal.ContourGenerate() arguments
    # Band srcBand,
    # double contourInterval,
    # double contourBase,
    # double[] fixedLevelCount,
    # int useNoData,
    # double noDataValue,
    # Layer dstLayer,
    # int idField,
    # int elevField
     
    ds = gdal.Open('dem.asc')
    gdal.ContourGenerate(ds.GetRasterBand(1), 400, 10, [], 0, 0, ogr_lyr, 0, 1)


";i:1;s:6:"python";i:2;s:18:"| 07/02-contour.py";}i:2;i:3451;}i:5;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1286:"
    """
    Draw an entire contour shapefile
    to a pngcanvas image.
    """
    import shapefile
    import pngcanvas
    # Open the contours
    r = shapefile.Reader("contour.shp")
    # Setup the world to pixels conversion
    xdist = r.bbox[2] - r.bbox[0]
    ydist = r.bbox[3] - r.bbox[1]
    iwidth = 800
    iheight = 600
    xratio = iwidth/xdist
    yratio = iheight/ydist
    contours = []
    # Loop through all shapes
    for shape in r.shapes():
      # Loop through all parts
      for i in range(len(shape.parts)):
        pixels=[]
        pt = None
        if i<len(shape.parts)-1:
          pt = shape.points[shape.parts[i]:shape.parts[i+1]]
        else:
          pt = shape.points[shape.parts[i]:]
        for x,y in pt:
          px = int(iwidth - ((r.bbox[2] - x) * xratio))
          py = int((r.bbox[3] - y) * yratio)
          pixels.append([px,py])
        contours.append(pixels)
    # Set up the output canvas
    canvas = pngcanvas.PNGCanvas(iwidth,iheight)
    # PNGCanvas accepts rgba byte arrays for colors
    red = [0xff,0,0,0xff]
    canvas.color = red 
    # Loop through the polygons and draw them
    for c in contours:
      canvas.polyline(c)
    # Save the image
    f = open("contours.png", "wb")
    f.write(canvas.dump())
    f.close()


";i:1;s:6:"python";i:2;s:23:"| 07/03-drawContours.py";}i:2;i:4415;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:2702:"
    """
    Converts a LIDAR LAS file to an
    ASCII DEM.  Interpolation is used
    to account for data loss.  
    """
    # We only need 2 modules
    # both available on PyPI!
    from laspy.file import File
    import numpy as np
     
    # Source LAS file
    source = "lidar.las"
     
    # Output ASCII DEM file
    target = "lidar.asc"
     
    # Grid cell size (data units)
    cell = 1.0
     
    # No data value for output DEM
    NODATA = 0
     
    # Open LIDAR LAS file
    las = File(source, mode="r")
     
    #xyz min and max
    min = las.header.min
    max = las.header.max
     
    # Get the x axis distance
    xdist = max[0] - min[0]
     
    # Get the y axis distance
    ydist = max[1] - min[1]
     
    # Number of columns for our grid
    cols = int(xdist) / cell
     
    # Number of rows for our grid
    rows = int(ydist) / cell
     
    cols += 1
    rows += 1
     
    # Track how many elevation
    # values we aggregate
    count = np.zeros((rows, cols)).astype(np.float32)
    # Aggregate elevation values
    zsum = np.zeros((rows, cols)).astype(np.float32)
     
    # Y resolution is negative
    ycell = -1 * cell
     
    # Project x,y values to grid
    projx = (las.x - min[0]) / cell
    projy = (las.y - min[1]) / ycell
    # Cast to integers and clip for use as index
    ix = projx.astype(np.int32)
    iy = projy.astype(np.int32)
     
    # Loop through x,y,z arrays, add to grid shape,
    # and aggregate values for averaging
    for x,y,z in np.nditer([ix, iy, las.z]):
      count[y, x]+=1
      zsum[y, x]+=z
     
    # Change 0 values to 1 to avoid numpy warnings, 
    # and NaN values in array
    nonzero = np.where(count>0, count, 1)
    # Average our z values
    zavg = zsum/nonzero
     
    # Interpolate 0 values in array to avoid any
    # holes in the grid
    mean = np.ones((rows,cols)) * np.mean(zavg)
    left = np.roll(zavg, -1, 1)
    lavg = np.where(left>0,left,mean)
    right = np.roll(zavg, 1, 1)
    ravg = np.where(right>0,right,mean)
    interpolate = (lavg+ravg)/2
    fill=np.where(zavg>0,zavg,interpolate)
     
    # Create our ASCII DEM header
    header = "ncols        %s\n" % fill.shape[1]
    header += "nrows        %s\n" % fill.shape[0]
    header += "xllcorner    %s\n" % min[0]
    header += "yllcorner    %s\n" % min[1]
    header += "cellsize     %s\n" % cell
    header += "NODATA_value      %s\n" % NODATA
     
    # Open the output file, add the header, save the array
    with open(target, "wb") as f:
      f.write(header)
      # The fmt string ensures we output floats 
      # that have at least one number but only 
      # two decimal places
      np.savetxt(f, fill, fmt="%1.2f")

";i:1;s:6:"python";i:2;s:15:"| 07/04-grid.py";}i:2;i:5750;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:580:"
    """Convert an ASCII DEM to an image."""
    import numpy as np
    import Image
    import ImageOps
     
    # Source LIDAR DEM file
    source = "relief.asc"
     
    # Output image file
    target = "relief.bmp"
     
    # Load the ASCII DEM into a numpy array
    arr = np.loadtxt(source, skiprows=6)
     
    # Convert array to numpy image
    im = Image.fromarray(arr).convert('RGB')
     
    # Enhance the image:
    # equalize and increase contrast
    im = ImageOps.equalize(im)
    im = ImageOps.autocontrast(im)
     
    # Save the image
    im.save(target)

";i:1;s:6:"python";i:2;s:18:"| 07/05-dem2img.py";}i:2;i:8491;}i:8;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1196:"
    """
    Convert an ASCII DEM to an image and colorize
    using a heat-map color ramp
    """
    import numpy as np
    import Image
    import ImageOps
    import colorsys
     
    # Source LIDAR DEM file
    source = "lidar.asc"
     
    # Output image file
    target = "lidar.bmp"
     
    # Load the ASCII DEM into a numpy array
    arr = np.loadtxt(source, skiprows=6)
     
    # Convert the numpy array to a PIL image
    im = Image.fromarray(arr).convert('L')
     
    # Enhance the image
    im = ImageOps.equalize(im)
    im = ImageOps.autocontrast(im)
     
    # Begin building our color ramp
    palette = []
     
    # Hue, Saturaction, Value
    # color space
    h = .67
    s = 1
    v = 1
     
    # We'll step through colors from:
    # blue-green-yellow-orange-red.
    # Blue=low elevation, Red=high-elevation
    step = h/256.0
     
    # Build the palette
    for i in range(256):
      rp,gp,bp = colorsys.hsv_to_rgb(h,s,v)
      r = int(rp*255)
      g = int(gp*255)
      b = int(bp*255)
      palette.extend([r,g,b])
      h-=step
     
    # Apply the palette to the image      
    im.putpalette(palette)
     
    # Save the image
    im.save(target)

";i:1;s:6:"python";i:2;s:19:"| 07/06-colorize.py";}i:2;i:9113;}i:9;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:3800:"
    """
    Convert an LAS LIDAR file to a shapefile
    by creating a 3D triangle mesh using
    Delaunay Triangulation.
    """
    # cPickle is used to store
    # tessalated triangles
    # to save time writing 
    # future shapefiles
    import cPickle
    import os
    import time
    import math
    # Third-party Python modules:
    import numpy as np
    import shapefile
    from laspy.file import File
    import voronoi
     
    # Source LAS file
    source = "clippedLAS.las"
     
    # Output shapefile
    target = "mesh"
     
    # Triangles archive
    archive = "triangles.p"
     
    # Pyshp archive
    pyshp = "mesh_pyshp.p"
     
    # Point class required by
    # the voronoi module
    class Point:
      def __init__(self,x,y):
        self.px = x
        self.py = y
     
      def x(self):
        return self.px
     
      def y(self):
        return self.py
     
    # This will be the triangle
    # array.  Load it from a pickle
    # file or use the voronoi module
    # to create the triangles.
    triangles = None
     
    if os.path.exists(archive):
      print "Loading triangle archive..."
      f = open(archive, "rb")
      triangles = cPickle.load(f)
      f.close()
      # Open LIDAR LAS file
      las = File(source, mode="r")  
    else:
      # Open LIDAR LAS file
      las = File(source, mode="r")  
      points = []
      print "Assembling points..."  
      # Pull points from LAS file
      for x,y in np.nditer((las.x,las.y)): 
        points.append(Point(x,y))
      print "Composing triangles..."
      # Delaunay Triangulation  
      triangles = voronoi.computeDelaunayTriangulation(points) 
      # Save the triangles to save time if we write more than
      # one shapefile.
      f = open(archive, "wb")
      cPickle.dump(triangles, f, protocol=2)
      f.close()
     
    print "Creating shapefile..."
    w = None 
    if os.path.exists(pyshp):
      f = open(pyshp, "rb")
      w = cPickle.load(f)
      f.close()
    else:
      # PolygonZ shapefile (x,y,z,m)
      w = shapefile.Writer(shapefile.POLYGONZ)
      w.field("X1", "C", "40")
      w.field("X2", "C", "40")
      w.field("X3", "C", "40")
      w.field("Y1", "C", "40")
      w.field("Y2", "C", "40")
      w.field("Y3", "C", "40")
      w.field("Z1", "C", "40")
      w.field("Z2", "C", "40")
      w.field("Z3", "C", "40")
      tris = len(triangles)
      # Loop through shapes and 
      # track progress every 10 percent
      last_percent = 0
      for i in range(tris):
        t = triangles[i]
        percent = int((i/(tris*1.0))*100.0)
        if percent % 10.0 == 0 and percent > last_percent:
          last_percent = percent
          print "%s %% done - Shape %s/%s at %s" % (percent, i, tris, time.asctime()) 
        part=[]
        x1 = las.x[t[0]]
        y1 = las.y[t[0]]
        z1 = las.z[t[0]]
        x2 = las.x[t[1]]
        y2 = las.y[t[1]]
        z2 = las.z[t[1]]
        x3 = las.x[t[2]]
        y3 = las.y[t[2]]
        z3 = las.z[t[2]]
        # Check segments for large triangles
        # along the convex hull which is an common
        # artificat in Delaunay triangulation
        max = 3
        if math.sqrt((x2-x1)**2+(y2-y1)**2) > max: continue
        if math.sqrt((x3-x2)**2+(y3-y2)**2) > max: continue
        if math.sqrt((x3-x1)**2+(y3-y1)**2) > max: continue
        part.append([x1,y1,z1,0])
        part.append([x2,y2,z2,0])
        part.append([x3,y3,z3,0])
        w.poly(parts=[part])
        w.record(x1,x2,x3,y1,y2,y3,z1,z2,z3)
      print "Saving shapefile..."
      # Pickle the Writer in case something
      # goes wrong. Be sure to delete this
      # file to recreate teh shapefile.
      f = open(pyshp, "wb")
      cPickle.dump(w, f, protocol=2)
      f.close()
    w.save(target)
    print "Done."


";i:1;s:6:"python";i:2;s:15:"| 07/07-mesh.py";}i:2;i:10352;}i:10;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:14185;}i:11;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"More advanced modules";i:1;i:2;i:2;i:14185;}i:2;i:14185;}i:12;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:14185;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:4303:"
    """
    Output a normalized vegetative index
    """
    import gdal, gdalnumeric, ogr
    import Image, ImageDraw
     
    def imageToArray(i):
      """
      Converts a Python Imaging Library 
      array to a gdalnumeric image.
      """
      a=gdalnumeric.numpy.fromstring(i.tostring(),'b')
      a.shape=i.im.size[1], i.im.size[0]
      return a
     
    def world2Pixel(geoMatrix, x, y):
      """
      Uses a gdal geomatrix (gdal.GetGeoTransform()) 
      to calculate the pixel location of a 
      geospatial coordinate 
      """
      ulX = geoMatrix[0]
      ulY = geoMatrix[3]
      xDist = geoMatrix[1]
      yDist = geoMatrix[5]
      rtnX = geoMatrix[2]
      rtnY = geoMatrix[4]
      pixel = int((x - ulX) / xDist)
      line = int((ulY - y) / xDist)
      return (pixel, line)    
     
    # Multispectral image used 
    # to create the NDVI. Must
    # have red and infrared
    # bands
    source = "farm.tif"
     
    # Output geotiff file name
    target = "ndvi.tif"
     
    # Load the source data as a gdalnumeric array
    srcArray = gdalnumeric.LoadFile(source)
     
    # Also load as a gdal image to 
    # get geotransform (world file) info
    srcImage = gdal.Open(source)
    geoTrans = srcImage.GetGeoTransform()
     
    # Red and infrared (or near infrared) bands
    r = srcArray[1]
    ir = srcArray[2]
     
    ## Clip a field out of the bands using a
    ## field boundary shapefile
     
    # Create an OGR layer from a Field boundary shapefile
    field = ogr.Open("field.shp")
    # Must define a "layer" to keep OGR happy
    lyr = field.GetLayer("field")
    # Only one polygon in this shapefile
    poly = lyr.GetNextFeature()
     
    # Convert the layer extent to image pixel coordinates
    minX, maxX, minY, maxY = lyr.GetExtent()
    ulX, ulY = world2Pixel(geoTrans, minX, maxY)
    lrX, lrY = world2Pixel(geoTrans, maxX, minY)
     
    # Calculate the pixel size of the new image
    pxWidth = int(lrX - ulX)
    pxHeight = int(lrY - ulY)
     
    # Create a blank image of the correct size
    # that will serve as our mask
    clipped = gdalnumeric.numpy.zeros((3, pxHeight, pxWidth), \
    gdalnumeric.numpy.uint8)
    #mmask = gdalnumeric.zeros((3, pxHeight, pxWidth), gdalnumeric.UnsignedInt8)
    #rgb = rgb.astype(gdalnumeric.UnsignedInt8)
    rClip = r[ulY:lrY, ulX:lrX]
    irClip = ir[ulY:lrY, ulX:lrX]
     
    # Create a new geomatrix for the image
    geoTrans = list(geoTrans)
    geoTrans[0] = minX
    geoTrans[3] = maxY
     
    # Map points to pixels for drawing 
    # the field boundary on a blank
    # 8-bit, black and white, mask image.
    points = []
    pixels = []
    # Grab the polygon geometry
    geom = poly.GetGeometryRef()
    pts = geom.GetGeometryRef(0)
    # Loop through geometry and turn
    # the points into an easy-to-manage 
    # Python list 
    for p in range(pts.GetPointCount()):
      points.append((pts.GetX(p), pts.GetY(p)))
    # Loop through the points and map to pixels.
    # Append the pixels to a pixel list
    for p in points:
      pixels.append(world2Pixel(geoTrans, p[0], p[1]))
    # Create the raster polygon image
    rasterPoly = Image.new("L", (pxWidth, pxHeight), 1)
    # Create a PIL drawing object
    rasterize = ImageDraw.Draw(rasterPoly)
    # Dump the pixels to the image
    rasterize.polygon(pixels, 0)
    # Hand the image back to gdal/gdalnumeric
    # so we can use it as an array mask
    mask = imageToArray(rasterPoly)    
    # Clip the red band using the mask   
    rClip = gdalnumeric.numpy.choose(mask, \
      (rClip, 0)).astype(gdalnumeric.numpy.uint8)
    # Clip the infrared band using the mask
    irClip = gdalnumeric.numpy.choose(mask, \
      (irClip, 0)).astype(gdalnumeric.numpy.uint8)
     
    # We don't care about numpy warnings
    # due to NaN values from clipping
    gdalnumeric.numpy.seterr(all="ignore")
     
    # NDVI equation: (infrared - red) / (infrared + red)
    # *1.0 converts values to floats, 
    # +1.0 prevents ZeroDivisionErrors 
    ndvi = 1.0 * (irClip - rClip) / irClip + rClip + 1.0
     
    # Remove any NaN values from the final product
    ndvi = gdalnumeric.numpy.nan_to_num(ndvi)
     
    # Save ndvi as tiff
    gdalnumeric.SaveArray(ndvi, target, \
      format="GTiff", prototype=source)


";i:1;s:6:"python";i:2;s:15:"| 08/01-ndvi.py";}i:2;i:14226;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:2407:"
    """
    Classify an NDVI tiff using 7 classes 
    by "pushing" the NDVI through
    masks defined by the desired 
    range of values for each class.
    """
    import gdalnumeric as gd
    import operator
     
    def histogram(a, bins=range(0,256)):
      """
      Histogram function for multi-dimensional array.
      a = array
      bins = range of numbers to match 
      """
      fa = a.flat
      n = gd.numpy.searchsorted(gd.numpy.sort(fa), bins)
      n = gd.numpy.concatenate([n, [len(fa)]])
      hist = n[1:]-n[:-1] 
      return hist
     
    def stretch(a):
      """
      Performs a histogram stretch on a gdalnumeric array image.
      """
      hist = histogram(a)
      lut = []
      for b in range(0, len(hist), 256):
        # step size
        step = reduce(operator.add, hist[b:b+256]) / 255
        # create equalization lookup table
        n = 0
        for i in range(256):
          lut.append(n / step)
          n = n + hist[i+b]
      gd.numpy.take(lut, a, out=a)
      return a
     
    # NDVI output from ndvi script
    source = "ndvi.tif"
    # Target file name for classified
    # image image
    target = "ndvi_color.tif"
     
    # Load the image into an array
    ndvi = gd.LoadFile(source).astype(gd.numpy.uint8)
    # Peform a histogram stretch so we are able to
    # use all of the classes
    ndvi = stretch(ndvi)
     
    # Create a blank 3-band image the same size as the ndvi
    rgb = gd.numpy.zeros((3, len(ndvi), len(ndvi[0])), gd.numpy.uint8)
     
    # Class list with ndvi upper range values.
    # Note the lower and upper values are listed on the ends
    classes = [58,73,110,147,184,220,255]
     
    # Color look-up table (lut)
    # The lut must match the number of classes
    # Specified as R,G,B tuples from dark brown to dark green
    lut = [[120,69,25], [255,178,74], [255,237,166], [173,232,94],
           [135,181,64], [3,156,0], [1,100,0]]
     
    # Starting value of the first class
    start = 1
     
    # Process all classes.
    for i in range(len(classes)):
        mask = gd.numpy.logical_and(\
        start <= ndvi, ndvi <= classes[i])
        for j in range(len(lut[i])):
            rgb[j] = gd.numpy.choose(mask, \
              (rgb[j], lut[i][j]))
        start = classes[i]+1    
     
    # Save a geotiff image of the colorized ndvi.
    gd.SaveArray(rgb, target, format="GTiff", prototype=source)


";i:1;s:6:"python";i:2;s:24:"| 08/02-ndvi-classify.py";}i:2;i:18568;}i:15;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:2532:"
    """
    Crawls a terrain raster from a starting
    point and "floods" everything at the same
    or lower elevation by producing a mask
    image of 1,0 values.
    """
     
    import numpy as np
    from linecache import getline
     
    def floodFill(c,r,mask):
      """
      Crawls a mask array containing
      only 1 and 0 values from the
      starting point (c=column,
      r=row - a.k.a. x,y) and returns
      an array with all 1 values
      connected to the starting cell.
      This algorithm performs a 4-way
      check non-recursively.  
      """
      # cells already filled
      filled = set()
      # cells to fill
      fill = set()
      fill.add((c,r))
      width = mask.shape[1]-1
      height = mask.shape[0]-1
      # Our output inundation array
      flood = np.zeros_like(mask, dtype=np.int8)
      # Loop through and modify the cells which
      # need to be checked.
      while fill:
        # Grab a cell
        x,y = fill.pop()
        if y == height or x == width or x < 0 or y < 0:
          # Don't fill
          continue
        if mask[y][x] == 1:
          # Do fill
          flood[y][x]=1
          filled.add((x,y))
          # Check neighbors for 1 values
          west =(x-1,y)
          east = (x+1,y)
          north = (x,y-1)
          south = (x,y+1)
          if not west in filled:
            fill.add(west)
          if not east in filled:      
            fill.add(east)
          if not north in filled: 
            fill.add(north)
          if not south in filled: 
            fill.add(south)
      return flood 
     
    source = "terrain.asc"
    target = "flood.asc"
     
    print "Opening image..."
    img = np.loadtxt(source, skiprows=6)
    print "Image opened"
     
    a = np.where(img<70, 1,0)
    print "Image masked"
     
    # Parse the headr using a loop and
    # the built-in linecache module
    hdr = [getline(source, i) for i in range(1,7)]
    values = [float(h.split(" ")[-1].strip()) for h in hdr]
    cols,rows,lx,ly,cell,nd = values
    xres = cell
    yres = cell * -1
     
    # Starting point for the 
    # flood inundation 
    sx = 2582
    sy = 2057
     
    print "Beginning flood fill"      
    fld = floodFill(sx,sy, a)
    print "Finished Flood fill"
     
    header=""
    for i in range(6):
      header += hdr[i]
     
    print "Saving grid"
    # Open the output file, add the hdr, save the array
    with open(target, "wb") as f:
      f.write(header)
      np.savetxt(f, fld, fmt="%1i")
    print "Done!"


";i:1;s:6:"python";i:2;s:21:"| 08/03-flood-fill.py";}i:2;i:21023;}i:16;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1971:"
"""
Provides a simple command-line-output
version of the least cost path solution
using randomly-generated notional arrays.
"""
 
import numpy as np
 
# Our A* search algorithm  
def astar(start, end, h, g):
  cset = set()
  oset = set()
  path = set()
  oset.add(start)
  while oset:
    cur = oset.pop()
    if cur == end:
      return path
    cset.add(cur)
    path.add(cur)
    options = []
    y1 = cur[0]
    x1 = cur[1]
    if y1 > 0: 
      options.append((y1-1, x1))
    if y1 < h.shape[0]-1: 
      options.append((y1+1, x1))
    if x1 > 0: 
      options.append((y1, x1-1))
    if x1 < h.shape[1]-1: 
      options.append((y1, x1+1))
    if end in options:
      return path
    best = options[0]
    cset.add(options[0])
    for i in range(1,len(options)):
      option = options[i]
      if option in cset:
        continue
      elif h[option] <= h[best]:
        best = option   
        cset.add(option)
      elif g[option] < g[best]:
        best = option
        cset.add(option)
      else:
        cset.add(option)
    print best, ", ", h[best], ", ", g[best]
    oset.add(best)
  return []
 
 
# Width and height
# of grids
w = 5
h = 5
 
# Start location:
# Lower left of grid
start = (h-1, 0)
 
# End location:
# Top right of grid
dx = w-1
dy = 0
 
# Blank grid
a = np.zeros((w,h))
 
# Distance grid
dist = np.zeros(a.shape, dtype=np.int8)
 
# Calculate distance for all cells
for y,x in np.ndindex(a.shape):
  dist[y][x] = abs((dx-x)+(dy-y))
 
# "Terrain" is a random value between 1-16.
# Add to the distance grid to calculate
# The cost of moving to a cell
cost = np.random.randint(1,16,(w,h)) + dist
 
print "COST GRID (Value + Distance)"
print cost
print
 
print "(Y,X), HEURISTIC, DISTANCE"
# Find the path
path = astar(start,(dy,dx),cost, dist)
print
 
# Create and populate the path grid
path_grid = np.zeros(cost.shape, dtype=np.uint8)
for y,x in path:
  path_grid[y][x]=1
path_grid[dy][dx]=1
 
print "PATH GRID: 1=path"
print path_grid
";i:1;s:6:"python";i:2;s:27:"| 08/04-least-cost_model.py";}i:2;i:23600;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:5227:"
    """
    Calculates the least cost path
    over a terrain grid and outputs
    another raster of 1,0 values
    defining the path.
    """
     
    import numpy as np
    import math
    from linecache import getline
     
    def e_dist(p1,p2):
      """
      Takes two points and returns
      the euclidian distance
      """
      x1,y1=p1
      x2,y2=p2
      distance = math.sqrt((x1-x2)**2+(y1-y2)**2)
      return int(distance)
     
    def weighted_score(cur, node, h, start, end):
      """
      Provides a weighted score by comparing the
      current node with a neighboring node. Loosely
      based on on the Nisson score concept: f=g+h
      In this case, the "h" value, or "heuristic",
      is the elevation value of each node.     
      """
      score = 0
      # current node elevation
      cur_h = h[cur]
      # current node distance from end
      cur_g = e_dist(cur,end)
      # current node distance from 
      cur_d = e_dist(cur,start)
      # neighbor node elevation
      node_h = h[node]
      # neighbor node distance from end
      node_g = e_dist(node,end)
      # neighbor node distance from start
      node_d = e_dist(node, start)
      # Compare values with the heighest
      # weight given to terrain followed
      # by progress towards the goal.
      if node_h < cur_h:
        score += cur_h-node_h
      if node_g < cur_g:
        score += 10
      if node_d > cur_d:
        score += 10
      return score
     
    def astar(start, end, h):
      """
      A-Star (or A*) search algorithm.
      Moves through nodes in a network
      (or grid), scores each node's 
      neighbors, and goes to the node
      with the best score until it finds
      the end.  A* is an evolved Dijkstra
      algorithm.
      """
      # Closed set of nodes to avoid
      cset = set()
      # Open set of nodes to evaluate
      oset = set()
      # Output set of path nodes
      path = set()
      # Add the starting point to
      # to begin processing
      oset.add(start)
      while oset:
        # Grab the next node
        cur = oset.pop()
        # Return if we're at the end
        if cur == end:
          return path
        # Close off this node to future
        # processing
        cset.add(cur)
        # The current node is always
        # a path node by definition
        path.add(cur)
        # List to hold neighboring
        # nodes for processing
        options = []
        # Grab all of the neighbors
        y1 = cur[0]
        x1 = cur[1]
        if y1 > 0: 
          options.append((y1-1, x1))
        if y1 < h.shape[0]-1: 
          options.append((y1+1, x1))
        if x1 > 0: 
          options.append((y1, x1-1))
        if x1 < h.shape[1]-1: 
          options.append((y1, x1+1))
        if x1 > 0 and y1 > 0:
          options.append((y1-1, x1-1))
        if y1 < h.shape[0]-1 and x1 <  h.shape[1]-1:
          options.append((y1+1, x1+1))
        if y1 < h.shape[0]-1 and x1 > 0:
          options.append((y1+1, x1-1))
        if y1 > 0 and x1 <  h.shape[1]-1:
          options.append((y1-1, x1+1))  
        # If the end is a neighbor, return
        if end in options:
          return path
        # Store the best known node
        best = options[0]
        # Begin scoring neighbors
        best_score = weighted_score(cur, best, h, start, end)    
        # process the other 7 neighbors
        for i in range(1,len(options)):
          option = options[i]
          # Make sure the node is new
          if option in cset:
            continue
          else:
            # Score the option and compare it to the best known
            option_score = weighted_score(cur, option, h, start, end)
            if option_score > best_score:
              best = option
              best_score = option_score
            else:
              # If the node isn't better seal it off
              cset.add(option)
        # Uncomment this print statement to watch
        # the path develop in real time:
        # print best, e_dist(best,end)
     
        # Add the best node to the open set
        oset.add(best)
      return []
     
    # Our terrain data
    source = "dem.asc"
     
    # Output file name
    # for the path raster
    target = "path.asc"
     
    print "Opening %s..." % source
    cost = np.loadtxt(source, skiprows=6)
    print "Opened %s." % source
     
    # Parse the header
    hdr = [getline(source, i) for i in range(1,7)]
    values = [float(ln.split(" ")[-1].strip()) for ln in hdr]
    cols,rows,lx,ly,cell,nd = values
     
    # Starting column, row
    sx = 1006
    sy = 954
     
    # Ending column, row
    dx = 303 
    dy = 109
     
    print "Searching for path..."
    p = astar((sy,sx),(dy,dx),cost)
    print "Path found."
    print "Creating path grid..."
    path = np.zeros(cost.shape)
    print "Plotting path..."
    for y,x in p:
      path[y][x]=1
    path[dy][dx]=1
    print "Path plotted."
     
    print "Saving %s..." % target    
    header=""
    for i in range(6):
      header += hdr[i]
     
    # Open the output file, add the hdr, save the array
    with open(target, "wb") as f:
      f.write(header)
      np.savetxt(f, path, fmt="%4i")
     
    print "Done!"


";i:1;s:6:"python";i:2;s:26:"| 08/05-least-cost-path.py";}i:2;i:25622;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1067:"
import urllib
from xml.dom import minidom

# Nextbus API command mode
command = "vehicleLocations"

# Nextbus customer to query
agency = "chapel-hill"

# Bus we want to query
route = "A"

# Time in milliseconds since the 
# 1970 epoch time.  All tracks
# after this time will be returned.
# 0 only returns data for the last
# 15 minutes
epoch = "0"

## Build our query url
#
# webservices base url
url = "http://webservices.nextbus.com"
# web service path
url += "/service/publicXMLFeed?"
# service command/mode
url += "command=" + command
# agency 
url += "&a=" + agency
url +=  "&r=" + route
url += "&t=" + epoch

# Access the REST URL
feed = urllib.urlopen(url)


if feed:
  # Parse the xml feed
  xml = minidom.parse(feed)
  # Get the vehicle tags
  vehicles = xml.getElementsByTagName("vehicle")
  # Get the most recent one. Normally there will
  # be only one.
  if vehicles:
    bus = vehicles.pop()
    # Print the bus latitude and longitude
    att = bus.attributes
    print att["lon"].value, ",", att["lat"].value
  else:
    print "No vehicles found." 

";i:1;s:6:"python";i:2;s:18:"| 09/01-nextbus.py";}i:2;i:30898;}i:19;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1867:"
import urllib
from xml.dom import minidom
import time

def nextbus(a, r, c="vehicleLocations", e=0):
  """Returns the most recent latitude and 
  longitude of the selected bus line using
  the NextBus API (nbapi)"""
  nbapi = "http://webservices.nextbus.com"
  nbapi += "/service/publicXMLFeed?"
  nbapi += "command=%s&a=%s&r=%s&t=%s" % (c,a,r,e)
  xml = minidom.parse(urllib.urlopen(nbapi))
  bus=xml.getElementsByTagName("vehicle")
  if bus:    
    at = bus[0].attributes
    return(at["lat"].value, at["lon"].value)
  else: return (False, False)

def nextmap(a, r, mapimg, index):
  """Plots a nextbus location on a map image
  and saves it to disk using the OpenStreetMap
  Static Map API (osmapi)"""
  # Fetch the latest bus location
  lat, lon = nextbus(a, r)
  if not lat:
    return False
  # Base url + service path
  osmapi = "http://staticmap.openstreetmap.de/"
  osmapi += "staticmap.php?maptype=mapnik&"
  # Map Image width and height in pixels
  osmapi += "size=800x600" + "&"
  # Center the map on the bus location
  osmapi += "center=%s,%s" % (lat,lon) + "&"
  # Map zoom level (between 1-18)
  osmapi += "zoom=16" + "&"
  # Bus mark location 
  osmapi += "markers=%s,%s,lightblue%d" % (lat, lon, index) 
  print osmapi
  img = urllib.urlopen(osmapi)
  # Save the map image
  with open(mapimg + "%d.png" % index, "wb") as f:
    f.write(img.read())
  return True

# Nextbus API agency and bus line variables
agency = "chapel-hill"
route = "A"

# Name of map image to save as PNG
nextimg = "nextmap"

# Number of updates we want to make
requests = 3

# How often we want to update (seconds)
freq = 5

# Map the bus location every few seconds 
for i in range(requests):
  success = nextmap(agency, route, nextimg, i+1)
  if not success:
    print "No data available."
    continue
  print "Saved map %s at %s" % (i, time.asctime())
  time.sleep(freq)
";i:1;s:6:"python";i:2;s:14:"| 09/02-nextma";}i:2;i:32006;}i:20;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:33904;}i:21;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:33904;}}