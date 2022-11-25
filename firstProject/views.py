from django.http import HttpResponse

def helloworldfunction(request):
    returnedobject = HttpResponse('Hello World')
    return returnedobject