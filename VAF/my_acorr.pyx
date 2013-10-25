import numpy

def my_acorr(data):
    n = numpy.size(data)
    C = numpy.zeros(n)
    for i in range(n):
        for j in range(n - i):
            C[i] = C[i] + data[i + j] * data[j]
#             print('data[i+j] =' + repr(data[i+j]))
#             print('data[j] = ' + repr(data[j]) + '\n')
        C[i] = C[i] / (n - i)
#         print(n-i)
        C[i] = C[i] / C[0]
    return C
