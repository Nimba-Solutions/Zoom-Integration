@RestResource(urlMapping='/MeetingRegistrantLeft/*')
global with sharing class RouteZoomMeetingRegistrantLeft {
    
    @HttpPatch
    global static String meetingRegistrantJoin(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String registrantLeftRequestBody=req.requestBody.toString();
        if(string.isNotBlank(registrantLeftRequestBody)){
            
        }else{
            
        }
        
        return '';  
    }
    
}