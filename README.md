# WebServiceOperationUsingSwiftBlock

Call web-service operations using this demo which is created on Swift 2.0 with the following:

`Blocks` (Swift `closures`)

`NSURLRequest` with `session` (iOS 9 or above)

AVReachability to check network availibility


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
@ArpitVishwakarma
