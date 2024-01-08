@RestResource(urlMapping='/MeetingRegistrantJoin/*')
global with sharing class RouteZoomMeetingRegistrantJoin {
    
     @HttpPatch
    global static String meetingRegistrantJoin(){
              RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String registrantCreationRequestBody=req.requestBody.toString();
        if(string.isNotBlank(registrantCreationRequestBody)){
            
        }else{
            
        }
        
        return '';  
    }

}