a:73:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:38:"Geospatial Python crash course, part 1";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:78:"Most of the materials used for the daily presentation will be maintained here:";}i:2;i:55;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:134;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:43:"https://github.com/fpl/geotutorial_basic
  ";}i:2;i:134;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:134;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:176:"Snippets of codes and file will be downloadable from there by cloning and pulling stuff during the ongoing talk. The teacher will orchestrate the downloads and work. Trust him ";}i:2;i:183;}i:9;a:3:{i:0;s:6:"smiley";i:1;a:1:{i:0;s:3:"8-)";}i:2;i:359;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:". ";}i:2;i:362;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:364;}i:12;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:43:"
#!/usr/bin/python

print('Hello, world!')
";i:1;s:6:"python";i:2;s:22:"| 00/01_hello-world.py";}i:2;i:371;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:99:"
# This is the well-known Fibonacci series
a, b = 0, 1
while b<2000:
    print a
    a, b = b, a+b
";i:1;s:6:"python";i:2;s:20:"| 00/02_fibonacci.py";}i:2;i:460;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:174:"
    '''
      Use of a function
    '''
    def fibonacci(n):
        a, b = 0, 1
        while b<n:
            print a
            a, b = b, a+b
     
    fibonacci(2000)
";i:1;s:6:"python";i:2;s:20:"| 00/03_fibonacci.py";}i:2;i:603;}i:15;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:218:"
'''
    A true function with a return value and
    a list variable
'''
def fibonacci(n):
    a, b = 0, 1
    f = []
    while b<n:
        f.append(a)
        a, b = b, a+b
    return f
 
s = fibonacci(2000)
print s
";i:1;s:6:"python";i:2;s:20:"| 00/04_fibonacci.py";}i:2;i:820;}i:16;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:190:"
'''
    Default arguments in functions
'''
def fibonacci(n=2000):
    a, b = 0, 1
    f = []
    while b<n:
        f.append(a)
        a, b = b, a+b
    return f
 
s = fibonacci()
print s
";i:1;s:6:"python";i:2;s:20:"| 00/05_fibonacci.py";}i:2;i:1081;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:205:"
'''
    Keyword arguments in calling functions
'''
def fibonacci(n=2000):
    a, b = 0, 1
    f = []
    while b<n:
        f.append(a)
        a, b = b, a+b
    return f
 
s = fibonacci(n=10000)
print s
";i:1;s:6:"python";i:2;s:20:"| 00/06_fibonacci.py";}i:2;i:1314;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:234:"
'''
    Preparing for modules...
'''
def fibonacci(n=2000):
    a, b = 0, 1
    f = []
    while b<n:
        f.append(a)
        a, b = b, a+b
    return f
 
if __name__ == "__main__":
    s = fibonacci()
    print len(s)
 
print s
";i:1;s:6:"python";i:2;s:20:"| 00/07_fibonacci.py";}i:2;i:1562;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1562;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:81:"Now renames the last file as fibonacci.py and use it as a simple external module:";}i:2;i:1834;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1915;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:104:"
'''
    Fibonacci as an external module call
'''
import fibonacci as fib
 
s = fib.fibonacci()
print s
";i:1;s:6:"python";i:2;s:20:"| 00/08_fibonacci.py";}i:2;i:1922;}i:23;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:105:"
'''
    A matter of namespace and symbols
'''
from fibonacci import fibonacci
 
s = fibonacci()
print s
";i:1;s:6:"python";i:2;s:20:"| 00/09_fibonacci.py";}i:2;i:2069;}i:24;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:122:"
'''
    Command line parameters
'''
import sys
from fibonacci import fibonacci
 
s = fibonacci(int(sys.argv[1]))
print s
";i:1;s:6:"python";i:2;s:20:"| 00/10_fibonacci.py";}i:2;i:2217;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2217;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"in bash terminal run";}i:2;i:2377;}i:27;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:4:"   
";i:1;i:5;i:2;i:2397;}i:2;i:5;i:3;s:4:"   
";}i:2;i:2397;}i:28;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:5:"    
";i:1;i:5;i:2;i:2401;}i:2;i:5;i:3;s:5:"    
";}i:2;i:2401;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2406;}i:30;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:47:"chmod +x 10_fibonacci.py 
./10_fibonacci.py  23";}i:2;i:2406;}i:31;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codeblocks";i:1;b:1;i:2;i:4;i:3;s:1:"
";}i:2;i:2461;}i:32;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:279:"
'''
    What if you call this script without the required
    parameter?
'''
import sys
from fibonacci import fibonacci
 
def usage():
    print '''\
usage: %s int \
''' % sys.argv[0]
    sys.exit(1)
 
if len(sys.argv) < 2:
    usage()
 
s = fibonacci(int(sys.argv[1]))
print s
";i:1;s:6:"python";i:2;s:20:"| 00/11_fibonacci.py";}i:2;i:2468;}i:33;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:405:"
    '''
        What if you call this script with a wrong type
        parameter?
    '''
    import sys
    from fibonacci import fibonacci
     
    def usage():
        print '''\
    usage: %s int \
    ''' % sys.argv[0]
        sys.exit(1)
     
    if len(sys.argv) < 2:
        usage()
     
    try:
        n = int(sys.argv[1])
    except:
        usage()
     
    s = fibonacci(n)
    print s
";i:1;s:6:"python";i:2;s:20:"| 00/12_fibonacci.py";}i:2;i:2790;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2790;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"And now something completely different: the ";}i:2;i:3233;}i:36;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3277;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"object-oriented";}i:2;i:3279;}i:38;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3294;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:" version of the Fibonacci module:";}i:2;i:3296;}i:40;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3329;}i:41;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:387:"
    '''
        FibonacciBasic, the OOP approach
    '''
    class Fibonacci:
        _f = []
     
        def __init__(self, n=2000):
            a, b = 0, 1
            while b<n:
                self._f.append(a)
                a, b = b, a+b
     
        def list(self):
            print self._f
     
    if __name__ == "__main__":
        s = Fibonacci(10000)
        s.list()
";i:1;s:6:"python";i:2;s:22:"| 00/FibonacciBasic.py";}i:2;i:3336;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3336;}i:43;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3763;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:" and how you can use it in a calling script:";}i:2;i:3766;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3810;}i:46;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:385:"
    '''
    Now use a class instead of a procedural module
    '''
    import sys
    from FibonacciBasic import Fibonacci as f
     
    def usage():
        print '''\
    usage: %s int \
    ''' % sys.argv[0]
        sys.exit(1)
     
    if len(sys.argv) < 2:
        usage()
     
    try:
        n = int(sys.argv[1])
    except:
        usage()
     
    s = f(n)
    s.list()
";i:1;s:6:"python";i:2;s:20:"| 00/13_fibonacci.py";}i:2;i:3817;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3817;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:127:"Finally, a more complicated version of Fibonacci class, with inheritance, static stuff and other OO concepts can be introduced:";}i:2;i:4240;}i:49;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4367;}i:50;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:2407:"
    '''
        FibonacciAdvanced, the OOP approach
    '''
    class FibonacciAdvanced:
        ''' 
        This is a class with a static member and 
        a static method
        '''
     
        # static member
        _name = 'Fibonacci series advanced class' 
     
        def __init__(self, n=2000):
            self._f = []
            a, b = 0, 1
            while b<n:
                self._f.append(a)
                a, b = b, a+b
     
        def list(self):
            print self._f
     
        def get(self,index=0):
            print self._f[index]
     
        def slice(self,start=0,end=-1):
            print self._f[start:end]
     
        # static method with mandatory decorator
        @staticmethod 
        def name():
            return FibonacciAdvanced._name
     
    '''
        This is a base class with inherited classes
    '''
     
    class Sequence(object):
     
        def __init__(self, a, b, n=2000):
            self._f = []
            while b<n:
                self._f.append(a)
                a, b = b, a+b
     
        def list(self):
            print self._f
     
        def get(self,index=0):
            print self._f[index]
     
        def slice(self,start=0,end=-1):
            print self._f[start:end]
     
    class Fibonacci(Sequence):
     
        def __init__(self, n=2000):
            Sequence.__init__(self,0,1,n)
     
    class Lucas(Sequence):
     
        def __init__(self, n=2000):
            Sequence.__init__(self,2,1,n)
     
    class FibonacciSuper(Sequence):
        def __init__(self, n=2000):
            super(FibonacciSuper,self).__init__(2,1,n)
            '''
            super(self.__class__,self).__init__(2,1,n)      # An alternative way in 2.7
            Sequence.__init__(self,2,1,n)                   # Another alternative
            super().__init__(2,1,n)     # The 3.0 way...
            '''
     
    #
    # ... and all together
    #
     
    if __name__ == "__main__":
        u = FibonacciAdvanced(10000)
        s = Fibonacci(10000)
        t = Lucas(100000)
        v = FibonacciSuper(1000000000000000000)
     
        u.list()
        print 'This is a static method call: ' + FibonacciAdvanced.name()
     
        s.list()
        s.get()
        s.get(11)
        s.slice(11,15)
     
        t.list()
        t.get()
        t.get(11)
        t.slice(11,15)
     
        v.list()
";i:1;s:6:"python";i:2;s:25:"| 00/FibonacciAdvanced.py";}i:2;i:4374;}i:51;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:6824;}i:52;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:12:"markdowku_hr";i:1;b:1;i:2;i:5;i:3;s:5:"
----";}i:2;i:6824;}i:53;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6824;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"Add-on files are available here:";}i:2;i:6831;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6863;}i:56;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:74:"
https://www.dropbox.com/sh/h3xoj8r6kra2n2n/AADQIKjmwaqzG-qB94TErvbAa?dl=0";}i:2;i:6863;}i:57;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6863;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"Some useful stuff:";}i:2;i:6944;}i:59;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6962;}i:60;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6962;}i:61;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:23:"wiki:python:hancock.zip";i:1;N;i:2;N;i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:6964;}i:62;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6991;}i:63;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6991;}i:64;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:85:"https://github.com/googlemaps/kml-samples/blob/gh-pages/kml/time/time-stamp-point.kml";i:1;s:20:"KML sample by Google";}i:2;i:6993;}i:65;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7103;}i:66;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7103;}i:67;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:37:"https://en.wikipedia.org/wiki/GeoJSON";i:1;s:15:"GeoJSON example";}i:2;i:7105;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:7162;}i:69;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7163;}i:70;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:290:"{
  "type": "Feature",
  "id": "OpenLayers.Feature.Vector_314",
  "properties": {},
  "geometry": {
  "type": "Point",
  "coordinates": [
       97.03125,
       39.7265625 ]
  },
  "crs": {
    "type": "name",
    "properties": {
       "name": "urn:ogc:def:crs:OGC:1.3:CRS84"
    }
  }
}
";}i:2;i:7163;}i:71;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7492;}i:72;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:7492;}}