@RestResource(urlMapping='/ZoomMeeting/*')
global with sharing class RouteZoomMeetingCreation {
    
    @HttpPost
    global static string createMeeting(){
          RestRequest req = RestContext.request;
          RestResponse res = RestContext.response;
          String responseBody=req.requestBody.toString();
          if(string.isNotBlank(responseBody)){
              res.statusCode=200;
        ServiceZoomMeetingCreationWrapper wrapper = ServiceZoomMeetingCreationWrapper.parse(responseBody);
              
          }else{
               res.statusCode=400;
          }
        return '';
    }

}