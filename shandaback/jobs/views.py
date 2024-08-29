from rest_framework.decorators import api_view
from rest_framework.response import Response

# Create your views here.
@api_view(['POST'])
def createJob(request):
    routes = [
        {
            'EndPoint':'/jobs/artisan',
            'method': 'POST',
            'body':{'body':""},
            'description':'m'
        },
        {
            'EndPoint':'/jobs/mode_of_work',
            'method': 'POST',
            'body':{'body':""},
            'description':''
        },
        {
            'EndPoint':'/jobs/location',
            'method': 'POST',
            'body':{'body':""},
            'description':''
        },
        {
            'EndPoint':'/jobs/price',
            'method': 'POST',
            'body':{'body':""},
            'description':''
        },
        {
            'EndPoint':'/jobs/description',
            'method': 'POST',
            'body':{'body':""},
            'description':''
        },
    ]
    return Response(routes)
