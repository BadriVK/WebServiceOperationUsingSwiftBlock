## Description
Call web-service operations using 
`Blocks` (Swift `closures`)

`NSURLRequest` with `session` (iOS 9 or above)

**AVReachability** to check network availibility

##Requirements
>Swift 2 (Xcode 7+)

>iOS 8+

>ARC



##Usage

Pass the params dictionary and URL
```
let params:NSDictionary = ["email":"username" as String!, "pass": "pass" as String!]
 
let webOperation = AVWebOperation()
 
 webOperation.callServiceWithUrl("LOGINURL", param: params, completion: { (result) -> Void in

         let status = result.objectForKey("status")?.boolValue
         if status == true {
             //Handle the response here:
         }
 })
 ```

## Author
([@arpitVishwakarma](https://www.twitter.com/arpit_limodia))

