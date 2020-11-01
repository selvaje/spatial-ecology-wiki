a:46:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:26:"Zonal Statistics Benchmark";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:277:"This script is a quick prototype for doing a benchmark between different tools for zonal statistics. It is in quite crude state but should work if you have the tools installed on your system. For this demo, Open Foris Tools, SAGA GIS and pktools work - other tools yet to come.";}i:2;i:43;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:320;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:320;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"Install them:";}i:2;i:322;}i:8;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:335;}i:2;i:5;i:3;s:3:"  
";}i:2;i:335;}i:9;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:82:"http://www.openforis.org/OFwiki/index.php/Installing_Open_Foris_Geospatial_Toolkit";i:1;s:30:" Open Foris Geospatial Toolkit";}i:2;i:338;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:456;}i:2;i:5;i:3;s:3:"  
";}i:2;i:456;}i:11;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:58:"https://sourceforge.net/p/saga-gis/wiki/Binary%20Packages/";i:1;s:9:" SAGA GIS";}i:2;i:459;}i:12;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:532;}i:2;i:5;i:3;s:3:"  
";}i:2;i:532;}i:13;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:535;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"sudo apt-get install pktools";}i:2;i:537;}i:15;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:565;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:567;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:567;}i:18;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:49:"https://spideroak.com/browse/share/tka/matera2017";i:1;s:40:" Download the script + some testing data";}i:2;i:569;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:" and get in touch if you like: ";}i:2;i:664;}i:20;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:695;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"k-an";}i:2;i:697;}i:22;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:701;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"dle-r@gc-i.de";}i:2;i:703;}i:24;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:716;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:" (remove all hyphens but the last one from the address)";}i:2;i:718;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:773;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:773;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"You can find possible further development at ";}i:2;i:775;}i:29;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:21:"http://opengeodata.de";i:1;s:15:" opengeodata.de";}i:2;i:820;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:862;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:863;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:863;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"Usage:";}i:2;i:865;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:871;}i:35;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:870:"
Usage:
        python zonalStatBenchmark [tools] [input raster] [input mask / shape]
        
        [tools]                expects a chain of numbers, seperated by a hyphen; 
                               e.g. 1-2-6 for selecting oft-stat, pktools and SAGA
        [input raster]         the raster file for input
        [input mask / shape]   the raster or shape mask; be aware: some 
                               tools allow only raster input, some only 
                               vector input - so save a vector file and 
                               its rasterization with the same name in 
                               the same dir
        
        The following tools are available:
        
        1. oft-stat
        2. pktools
        3. Python / GDAL (perrygeo gist) (not yet)
        4. GRASS (not yet)
        5. R (not yet)
        6. SAGA
";i:1;N;i:2;N;}i:2;i:878;}i:36;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:878;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"Sample output:";}i:2;i:1758;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1772;}i:39;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:331:"
./zonalStatBenchmark.py 1-6-2 2050_TSSP_IM-ENS-A2-SP20_43023435_crop.tif poly_fr.tif
All selected tools ran successfully.

ID       Tool              time      
1        Open Foris Tools  seconds: 0.04  cpu-load: 97%
2        pktools           seconds: 0.19  cpu-load: 98%
6        SAGA              seconds: 0.17  cpu-load: 96%

";i:1;s:4:"bash";i:2;N;}i:2;i:1779;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1779;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"The code:";}i:2;i:2125;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2134;}i:43;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:7252:"

#!/usr/bin/python
# -*- coding: utf-8 -*-

import subprocess
import sys
import os
from collections import defaultdict

class zonalBenchmark:
    '''
    The script will provide a straight forward way to compare
    different zonal statistic implementations.
    '''  
    
    def __init__(self):
        '''
        TODO: possible tools to benchmark
        
        1. oft-stat
        2. pktools
        3. Python/GDAL (perrygeo - gist)
        4. GRASS
        5. R
        6. SAGA
        7. QGIS
        8. rasterstats
        9. starspan
        10. R - multicore
        11. PostGIS
        12. GeoTools
        '''


    def checkInstallStatus():
        '''
        Check if the selected provider(s) are available on the 
        (linux) machine.
        '''
        
    def getArguments(self, args):
        '''
        Get the links to the data which has been provided by the CLI 
        and hand it to the execution. Checks also if the data exists.
        ''' 
        
        # show help for no arguments
        if len(args[0]) < 2:
            zonalBenchmark().showUsage()
            sys.exit()
        try:
            if args[0][1] == '-h' or args[0][1] == '--help':
                zonalBenchmark().showUsage()
                sys.exit()
        except IndexError:
            zonalBenchmark().showUsage()
            sys.exit()
             
        # get arguments for tools, split them, convert to int and sort
        try:
            toolsArgs = args[0][1].split('-')
            tools = sorted(map(int, toolsArgs), key=int)
        except (TypeError, ValueError) as e:
            zonalBenchmark(args).showUsage()
            sys.exit() 
        
        # dict of implemented tools
        availableTools = {1:'Open Foris Tools',
                            2: 'pktools',
                            3: 'perrygeo',
                            4: 'GRASS',
                            5: 'R',
                            6: 'SAGA'}
        selectedTools = {}
        
        # create dict for selected tools
        for item in tools:
            if item in availableTools:
                selectedTools.update({item: availableTools[item]})
        
        # get input file
        workingDir = os.path.dirname(os.path.realpath(__file__))
        try:
            inputArg = args[0][2]
            inputFile = os.path.join(workingDir, inputArg)
            if not os.path.isfile(inputFile):
                print 'ERROR: Input file does not exist\You can run \'{0} --help\' for usage of the program.\n'.format(str(args[0][0]).lstrip('./'))
                sys.exit()
        except (IndexError, ValueError) as e:
            zonalBenchmark().showUsage()
        
        # get mask file        
        try:
            maskArg = args[0][3]
            maskFile = os.path.join(workingDir, maskArg)
            if not os.path.isfile(maskFile):
                print 'ERROR: Mask file does not exist\nYou can run \'{0} --help\' for usage of the program.\n'.format(str(args[0][0]).lstrip('./'))
                sys.exit()
        except (IndexError, ValueError) as e:
            zonalBenchmark().showUsage()

        return selectedTools, inputFile, maskFile
        
        
    def setCommands(self, selectedTools, inputFile, maskFile):
        '''
        Constructs the actual command(s) for the selected providers.
        '''   
        selectedCommands = {}
        if 1 in selectedTools:
            oftCMD = 'oft-stat -i {0} -o /tmp/oft_out.txt -um {1}'.format(inputFile, maskFile)
            selectedCommands.update({1:oftCMD})
            
        if 2 in selectedTools:
            maskFileShp = maskFile.replace('tif','shp')
            pkCMD = 'pkextract -f \'ESRI Shapefile\' -s {0} -i {1} -o /tmp/pk_out.shp -polygon --rule mean'.format(maskFileShp, inputFile)
            selectedCommands.update({2:pkCMD})    
        
        if 6 in selectedTools:
            sagaCMD = 'saga_cmd statistics_grid 5 -ZONES {0} -STATLIST {1} -OUTTAB /tmp/saga_out.txt'.format(maskFile, inputFile)
            selectedCommands.update({6:sagaCMD})
                     
        
        return selectedCommands
        
   
        
    def executeCommands(self, commands): 
        '''
        Executes the command for the selected provider.
        '''
        outputByCommand = {}
        for key, value in commands.items():
            try:
                output = subprocess.check_output(
                '/usr/bin/time -f "seconds: %e \ncpu-load: %P" {0} | tail -2'.format(value),
                shell=True,
                stderr=subprocess.STDOUT
                )                       
            except subprocess.CalledProcessError as grepexc:
                print "error code", grepexc.returncode, grepexc.output
            
            outputByCommand.update({key:output[0:28]})
            
        
        return outputByCommand
        
        
    def showOutput(self, output, selectedTools):
        '''
        Construct a pretty table to show a comparison of the programs
        on the command line.
        '''
        #~ print selectedTools
        #~ #print json.dumps(output, sort_keys=True, indent=4)
        #~ for key, value in output.items():
            #~ print key
        for key in output:
            output.update({key:output[key].split('\n')})
            
        #print output
            
        dd = defaultdict(list)

        for d in (selectedTools, output): # you can list as many input dicts as you want here
            for key, value in d.iteritems():
                dd[key].append(value)  
        #print dd
        
        out = ''
        
        for k, v in dd.iteritems():
            tool, time = v
            out += "{:<8} {:<17} {:<10} {:<10}\n".format(k, tool, time[0], time[1])          
        
        return out
    
    def showUsage(self):
        #print zonalBenchmark.__init__.__doc__
        print u'''Usage:
        python zonalStatBenchmark [tools] [input raster] [input mask / shape]
        
        [tools]                expects a chain of numbers, seperated by a hyphen; 
                               e.g. 1-2-6 for selecting oft-stat, pktools and SAGA
        [input raster]         the raster file for input
        [input mask / shape]   the raster or shape mask; be aware: some 
                               tools allow only raster input, some only 
                               vector input - so save a vector file and 
                               its rasterization with the same name in 
                               the same dir
        
        The following tools are available:
        
        1. oft-stat
        2. pktools
        3̶.̶ ̶P̶y̶t̶h̶o̶n̶/̶G̶D̶A̶L̶ ̶(̶p̶e̶r̶r̶y̶g̶e̶o̶ ̶-̶ ̶g̶i̶s̶t̶)̶
        4̶.̶ ̶G̶R̶A̶S̶S̶
        5̶.̶ ̶R̶
        6. SAGA
        '''

args = []
args.append(sys.argv)

userArgs = zonalBenchmark().getArguments(args)

commands = zonalBenchmark().setCommands(userArgs[0], userArgs[1], userArgs[2])

timeOutput = zonalBenchmark().executeCommands(commands)

output = zonalBenchmark().showOutput(timeOutput, userArgs[0])

print "All selected tools ran successfully.\n"
print "{:<8} {:<17} {:<10}".format('ID','Tool','time')
print output



";i:1;s:6:"python";i:2;N;}i:2;i:2141;}i:44;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:9408;}i:45;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:9408;}}