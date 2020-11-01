a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:33:"Muti Chore Image Tiling with GDAL";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:4673:"

import sys
from multiprocessing.managers import SyncManager
from functools import partial
import multiprocessing
from Queue import Queue as _Queue
import time

class Queue(_Queue):
    """ A picklable queue. """
    def __getstate__(self):
        # Only pickle the state we care about
        return (self.maxsize, self.queue, self.unfinished_tasks)

    def __setstate__(self, state):
        # Re-initialize the object, then overwrite the default state with
        # our pickled state.
        Queue.__init__(self)
        self.maxsize = state[0]
        self.queue = state[1]
        self.unfinished_tasks = state[2]


def get_q(q):
    return q

def make_nums(N):
    """ Create N large numbers to factorize.
    """
    nums = [999999999999]
    for i in xrange(N):
        nums.append(nums[-1] + 2)
    return nums

def factorizer_worker(job_q, result_q):
    """ A worker function to be launched in a separate process. Takes jobs from
        job_q - each job a list of numbers to factorize. When the job is done,
        the result (dict mapping number -> list of factors) is placed into
        result_q. Runs until job_q is empty.
    """
    while True:
        try:
            job = job_q.get_nowait()
            outdict = {n: factorize_naive(n) for n in job}
            result_q.put(outdict)
            print outdict
        except:
            return

def mp_factorizer(shared_job_q, shared_result_q, nprocs):
    """ Split the work with jobs in shared_job_q and results in
        shared_result_q into several processes. Launch each process with
        factorizer_worker as the worker function, and wait until all are
        finished.
    """
    procs = []

    print shared_job_q
    print shared_result_q

    for i in range(nprocs):
        p = multiprocessing.Process(
                target=factorizer_worker,
                args=(shared_job_q, shared_result_q))
        procs.append(p)
        p.start()

    for p in procs:
        p.join()

def submitjobs():
    for n in range (1,2,3):
        return [n, "hello", "args"]

class JobQueueManager(SyncManager):
    pass


def make_server_manager(port, authkey):
    job_q = Queue()
    result_q = Queue()

    job_q.put(["900000000000", "hello", "1st entry"])
    job_q.put(["900000000000", "hello", "2st entry"])
    job_q.put(["900000000000", "hello", "3st entry"])
    #job_q.put(["process", "hey", "args"]) # Submit a job
    #job_q.put(submitjobs()) # submit another job

    JobQueueManager.register('get_job_q', callable=partial(get_q, job_q))
    JobQueueManager.register('get_result_q', callable=partial(get_q, result_q))

    manager = JobQueueManager(address=('localhost', port), authkey=authkey)
    manager.start()
    print('Server started at port %s' % port)
    return manager

def make_client_manager(port, authkey):
    JobQueueManager.register('get_job_q')
    JobQueueManager.register('get_result_q')
    manager = JobQueueManager(address=('localhost', port), authkey=authkey)
    manager.connect()

    print 'Client connected to %s:%s' % ("localhost", port)
    return manager

def runclient():
    manager = make_client_manager(50000, "abcdefg")
    try:
        job_q = manager.get_job_q()
        #print job_q
        result_q = manager.get_result_q()
        print(job_q.get_nowait())
        #mp_factorizer(job_q, result_q, 4) # RUN PROGRAM
        result_q.put({1:2})
    except:
        print "queue empty"



def runserver():
    manager = make_server_manager(50000, "abcdefg")
    print "jobs"
    shared_job_q = manager.get_job_q()
    shared_result_q = manager.get_result_q()

    N = 3
    nums = make_nums(N)

    # The numbers are split into chunks. Each chunk is pushed into the job
    # queue.
    #chunksize = 43
    #for i in range(0, len(nums), chunksize):
        #print (nums[i:i + chunksize])
       # shared_job_q.put(nums[i:i + chunksize])
    #print shared_job_q

    # Wait until all results are ready in shared_result_q
    numresults = 0
    resultdict = {}
    while numresults < N:
        print numresults
        outdict = shared_result_q.get()
        resultdict.update(outdict)
        numresults += len(outdict)
        print ("update")
    print "- - - " + str(numresults) + " Processes run"
    # Sleep a bit before shutting down the server - to give clients time to
    # realize the job queue is empty and exit in an orderly way.
    time.sleep(2)
    manager.shutdown()
    print('Server at port %s closed' % 50000)



#    server = manager.get_server()
#    server.serve_forever()


if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "--client":
        runclient()
    else:
        runserver()
        
";i:1;s:6:"python";i:2;N;}i:2;i:56;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4744;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4744;}}