# Homework for Cheetah done by Axel Resnik 
Done in Ruby on Rails

## Getting Started
- The DB for the API is PostgreSQL, to populate the same we must run the seed file, where the information from the CSV is parsed.
- There is no daily repetition for this process, but I would make it from an external service like [Cron for Linux / UNIX]( https://www.cyberciti.biz/faq/how-do-i-add-jobs-to-cron-under-linux-or-unix-oses/ )
- Once the data is parsed, the same is based on the producers, where each one has assigned its own products.
- The URL for the API is based in the local host as the same is not deployed.
- the same one is: *http://localhost:3000/api/v1/producers?page=1*
- The API has a pagination system done by [Pagy gem]( https://ddnexus.github.io/pagy/how-to.html ), to navigate the same, we must change the page number in the URL.

## Example of the API 
-[
-  {
-    "producer": "Bernhard, Emmerich and Willms",
-    "products": [
-      {
-        "id": 41,
-        "name": "Carroway Seed",
-        "photo": "http://dummyimage.com/247x199.bmp/ff4444/ffffff",
-        "barcode": "20880",
-        "price": "15882",
-        "sku": "58b18288-ff56-4ba7-a656-28b2815ff65a",
-        "producer_id": 36,
-        "created_at": "2019-07-31T10:21:20.872Z",
-        "updated_at": "2019-07-31T10:21:20.872Z"
-      }
-    ]
-  },
  
  ## Build with
  - [jbuilder]( https://github.com/rails/jbuilder )
  - [Pagy gem]( https://ddnexus.github.io/pagy/how-to.html )
  - [Activerecord-Import]( https://github.com/zdennis/activerecord-import ) 