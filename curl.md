## Request to API


curl -H "Content-Type: application/json" -H "authorization: Token 3b5ff3d05f484b063d1c3e1b639488b48a06788f" https://api.ximilar.com/recognition/v2/classify -d '{"task_id": "b411ffe2-bcc3-468e-bf20-63a030bbc683", "version": 1, "records": [ {"_url": "https://i.imgur.com/rEZZt28.jpg" } ] }'



 --url https://api.ximilar.com/recognition/v2/classify/
 --request POST
 --header "Content-Type: application/json"
 --header "Authorization: Token 3b5ff3d05f484b063d1c3e1b639488b48a06788f"
 --data '{
  "task_id": "b411ffe2-bcc3-468e-bf20-63a030bbc683",
  "version": 1,
  "records": [
    {
      "_url": "https://i.imgur.com/boh2JeE.jpg"
    }
  ]
}'
