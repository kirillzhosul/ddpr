from rest_framework.decorators import api_view
from rest_framework.response import Response

@api_view(["GET"])
def hello_world(_):
    """Simple hello world response. """
    return Response({
        "success": "Hello world! From DDPR setup backend API.",
    })