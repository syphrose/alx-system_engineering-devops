ADVANCED API

Background Context
Questions involving APIs are common for interviews. Sometimes they’re as simple as ‘write a Python script that queries a given endpoint’, sometimes they require you to use recursive functions and format/sort the results.

A great API to use for some practice is the Reddit API. There’s a lot of endpoints available, many that don’t require any form of authentication, and there’s tons of information to be parsed out and presented. Getting comfortable with API calls now can save you some face during technical interviews and even outside of the job market, you might find personal use cases to make your life a little bit easier.

Reading API documentation to find the endpoints you're looking for can be a bit overwhelming if you're new to it, but with some practice and a systematic approach, you can quickly navigate and understand the documentation. Here's a step-by-step guide:

1. **Start with an Introduction**: API documentation often begins with an introduction or overview. Read this section to get a high-level understanding of what the API does and what it's designed for. Look for the API's purpose and any key concepts it uses.

2. **Authentication and Authorization**: Check if the API requires authentication. You'll need to understand how to authenticate your requests, such as using API keys, OAuth tokens, or other methods. This information is typically found in the authentication section of the documentation.

3. **Endpoints and Methods**: API endpoints are the URLs that you'll use to interact with the API. Look for a section that lists the available endpoints. Each endpoint should be associated with an HTTP method (GET, POST, PUT, DELETE, etc.) that defines what you can do with that endpoint.

4. **Parameters**: For each endpoint, there will be a list of parameters that you can include in your requests. These parameters can be in the form of query parameters, request headers, or request body (for POST and PUT requests). Pay attention to what each parameter does and whether it's required or optional.

5. **Request Examples**: API documentation often provides sample requests and responses for each endpoint. Review these examples to see how requests should be structured and what you can expect in the response. These examples can be invaluable in understanding how to construct your requests.

6. **Response Status Codes**: Understand the HTTP status codes that the API returns in response to your requests. Common ones include 200 (OK), 201 (Created), 400 (Bad Request), 401 (Unauthorized), 403 (Forbidden), and 404 (Not Found). Knowing how to interpret these codes is essential.

7. **Error Handling**: Look for a section that explains how the API handles errors. It should detail common error responses and how to handle them in your code.

8. **Rate Limits**: Check for any rate limiting policies. Many APIs have rate limits to prevent abuse. This section will inform you about the limits and how to handle rate-limiting errors.

9. **Pagination**: If the API returns a large number of results, there might be information on how to paginate through the results, typically using `page` and `per_page` parameters.

10. **Versioning**: Be aware of the API version you are working with, as APIs may change over time. Ensure you are using the correct version and consider versioning in your code.

11. **SDKs and Libraries**: Some APIs offer SDKs or client libraries in various programming languages. Using these libraries can simplify the process of making API calls.

12. **Community and Support**: If you have questions or run into issues, check for community forums, support channels, or contact information for the API provider.

13. **Terms of Service and Usage Policies**: Make sure you understand and adhere to the API provider's terms of service, usage policies, and any licensing restrictions.

14. **Testing**: Before integrating the API into your application, it's a good practice to test your requests using tools like cURL, Postman, or the API provider's testing environment.

15. **Documentation Updates**: APIs can evolve, so it's important to check if there are any updates or deprecations in the documentation or through API release notes.

Remember that each API may have its unique format and structure for documentation, so adapt your approach accordingly. Reading the documentation thoroughly and experimenting with sample requests will help you gain a solid understanding of the API's capabilities and usage.


Using an API with pagination is common when the API returns a large set of data, and the data is divided into multiple pages. Pagination allows you to retrieve and display this data in manageable chunks. To use an API with pagination, follow these general steps:

1. **Understand Pagination Parameters**:
   - Look in the API documentation to find out which parameters control pagination. Common parameters include `page`, `per_page`, `limit`, `offset`, `cursor`, and others.
   - Determine the default values and limits for these parameters. For example, the default page may be 1, and the default items per page may be 10.

2. **Make an Initial Request**:
   - Make the initial API request to the endpoint you want to retrieve data from. By default, this request will fetch the first page of data.
   - Include the necessary pagination parameters in your request. For example, to request the first page with 10 items per page, you might use `page=1` and `per_page=10` in your query string.

3. **Process the Response**:
   - Receive the response from the API, which will contain the first set of data and some metadata.
   - Extract the data you need from the response, and process it accordingly.

4. **Check for More Pages**:
   - Examine the metadata in the API response to determine if there are more pages of data available.
   - Common pagination metadata might include the total number of items, the current page number, and links or tokens to the next and previous pages.

5. **Request Subsequent Pages**:
   - If there are more pages to retrieve, use the pagination information from the previous response to construct the next request.
   - Typically, you will increment the `page` parameter to request the next page of data.
   - Continue making requests until you have retrieved all the data you need or until the API indicates that there are no more pages.

6. **Handle Rate Limiting**:
   - Be aware of any rate limits imposed by the API. If you reach the rate limit, you may need to wait before making additional requests.

7. **Aggregate and Process Data**:
   - As you retrieve data from each page, aggregate and process it as needed. You can store the data in a data structure, display it to users, or perform any other necessary operations.

8. **Error Handling**:
   - Implement error handling to handle potential issues such as API errors, rate limiting, or connectivity problems gracefully.

Here's a simplified example in Python using the `requests` library to interact with a paginated API:

```python
import requests

url = "https://api.example.com/data"
page = 1
per_page = 10

while True:
    response = requests.get(url, params={"page": page, "per_page": per_page})
    data = response.json()
    
    # Process the data here
    
    if page * per_page >= data["total_items"]:
        break  # Stop when you've retrieved all available data
    
    page += 1
```

This code makes requests to the API, processes the data, and continues fetching subsequent pages until all data is retrieved. The exact implementation may vary depending on the API and programming language you are using.


Parsing JSON results from an API is a common task when working with web services. JSON (JavaScript Object Notation) is a lightweight data interchange format, and many APIs return data in this format. To parse JSON results from an API, you'll need to use a programming language or library that can work with JSON. Here's a step-by-step guide using Python as an example:

1. **Make the API Request**: Use a library like `requests` to make a request to the API and retrieve the JSON data.

   ```python
   import requests

   api_url = "https://api.example.com/data"
   response = requests.get(api_url)

   if response.status_code == 200:
       json_data = response.json()
   else:
       print("Failed to retrieve data from the API")
   ```

2. **Check for Errors**: It's a good practice to check the HTTP status code in the response to ensure the request was successful (status code 200 usually indicates success). If the status code is not 200, handle the error accordingly.

3. **Access JSON Data**: Once you have the JSON data, you can access its elements like you would with a dictionary in Python. JSON data is typically structured as key-value pairs, where keys are strings and values can be various data types, including nested objects and arrays.

   For example, if the JSON response looks like this:

   ```json
   {
       "name": "John Doe",
       "age": 30,
       "email": "johndoe@example.com",
       "address": {
           "street": "123 Main St",
           "city": "Anytown"
       },
       "hobbies": ["Reading", "Hiking"]
   }
   ```

   You can access the data like this:

   ```python
   name = json_data["name"]
   age = json_data["age"]
   email = json_data["email"]
   street = json_data["address"]["street"]
   city = json_data["address"]["city"]
   hobbies = json_data["hobbies"]
   ```

4. **Iterate Over Arrays**: If the JSON data contains arrays, you can iterate over them to access each item:

   ```python
   for hobby in json_data["hobbies"]:
       print(hobby)
   ```

5. **Error Handling**: Be prepared to handle cases where the JSON structure doesn't match your expectations. Use try-except blocks to handle exceptions that may occur when trying to access data.

   ```python
   try:
       missing_key = json_data["missing_key"]
   except KeyError:
       print("Key 'missing_key' not found in JSON data.")
   ```

6. **Ensure Valid JSON**: Always validate that the API returns valid JSON before attempting to parse it. Invalid JSON will result in a parsing error.

7. **Close Resources**: If you're working with resources that need to be closed, like open files or database connections, make sure to close them properly when you're done processing the data.

The process of parsing JSON from an API may vary depending on the programming language you're using, but the key concepts remain similar. Always refer to the documentation of the programming language and any JSON parsing libraries you use for more specific details.


Making a recursive API call refers to the practice of making API requests in a way that the response from one API call triggers another API call, often with different parameters or endpoints. Recursive API calls are commonly used when dealing with hierarchical or paginated data. Here's a step-by-step guide on how to make recursive API calls:

1. **Define the Base Case**:
   - Determine the condition under which you should stop making API calls. This is your base case. It prevents infinite recursion and defines when the recursion should terminate.

2. **Create a Recursive Function**:
   - Define a function that will make the API call and handle the response.
   - Include the logic to check the base case and stop the recursion when it's met.

3. **Make the Initial API Call**:
   - Call the recursive function for the first time with the initial parameters.
   - Pass the parameters necessary for the first API call.

4. **Process the API Response**:
   - After making the API call, process the response as needed. Extract and use the data from the response.

5. **Update Parameters for Next Call**:
   - Determine how the parameters for the next API call should change. This could involve incrementing a page number or navigating a hierarchical structure.
   - Update the parameters based on the response data or some predetermined logic.

6. **Recursive Call**:
   - Call the recursive function again with the updated parameters.
   - This will make the next API request, which may be slightly different from the previous one.

7. **Base Case Check**:
   - In the recursive function, before making the API call, check if the base case condition has been met. If it has, return or exit the function.

8. **Handle Errors and Edge Cases**:
   - Implement error handling to deal with issues like API errors, rate limits, and connectivity problems.
   - Be prepared to handle edge cases specific to your use case.

9. **Aggregate Data**:
   - As you receive data from each API call, you may want to aggregate it into a single data structure or perform any other required data processing.

10. **Testing and Debugging**:
    - Test your recursive API call function thoroughly to ensure it works as expected.
    - Use print statements or logging to debug and track the recursive calls.

Here's a simplified Python example of a recursive API call function to retrieve paginated data:

```python
import requests

def recursive_api_call(api_url, page=1):
    response = requests.get(api_url, params={"page": page})
    
    if response.status_code == 200:
        data = response.json()
        
        # Process data here
        
        # Check for the base case (e.g., reaching the last page)
        if data.get("has_more_pages"):
            next_page = page + 1
            recursive_api_call(api_url, page=next_page)
    else:
        print("Failed to retrieve data from the API")

# Make the initial API call
initial_api_url = "https://api.example.com/data"
recursive_api_call(initial_api_url)
```

In this example, the `recursive_api_call` function makes API requests until a base case is met, and it continues to fetch additional pages of data. The specific conditions and data structure used will vary depending on the API and your use case.


In Python, you can sort a dictionary by its values using various techniques. Dictionaries themselves are inherently unordered in Python versions prior to 3.7, but you can create a sorted list of key-value pairs based on the values. Here are a few methods to achieve this:

1. Using `sorted()` with a Lambda Function (Python 2 & 3):
   You can use the `sorted()` function along with a lambda function as the key to sort the dictionary by its values. This method will return a list of tuples (key, value) in ascending order of values.

   ```python
   my_dict = {"apple": 3, "banana": 1, "cherry": 2}
   sorted_dict = sorted(my_dict.items(), key=lambda x: x[1])
   ```

   `sorted_dict` will contain the sorted list of tuples, and you can easily convert it back to a dictionary if needed:

   ```python
   sorted_dict = dict(sorted_dict)
   ```

2. Using `collections.OrderedDict()` (Python 2 & 3):
   If you want to maintain the order of the sorted dictionary, you can use the `collections.OrderedDict()`:

   ```python
   from collections import OrderedDict

   my_dict = {"apple": 3, "banana": 1, "cherry": 2}
   sorted_dict = OrderedDict(sorted(my_dict.items(), key=lambda x: x[1]))
   ```

   `sorted_dict` will be an ordered dictionary.

3. Using `itemgetter()` from the `operator` module (Python 2 & 3):
   Another way to sort the dictionary is to use the `itemgetter()` function from the `operator` module. This approach is especially useful for sorting by multiple keys.

   ```python
   from operator import itemgetter

   my_dict = {"apple": 3, "banana": 1, "cherry": 2}
   sorted_dict = dict(sorted(my_dict.items(), key=itemgetter(1)))
   ```

   This code sorts the dictionary by its values and then converts it back to a dictionary.

4. Using a list comprehension (Python 3.6+):
   If you are using Python 3.6 or later, you can use a list comprehension to sort the dictionary by values. This method is concise and easy to read:

   ```python
   my_dict = {"apple": 3, "banana": 1, "cherry": 2}
   sorted_dict = {k: v for k, v in sorted(my_dict.items(), key=lambda item: item[1])}
   ```

   This code creates a new dictionary with the sorted items.

The choice of method depends on your specific requirements and the version of Python you are using. The first method, using `sorted()`, is more widely applicable across different Python versions and is simple to understand.
