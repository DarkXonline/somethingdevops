<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Random Images Generator</title>
    <script>
        function generateRandomImage() {
            // Reload the page to generate a new random image
            location.reload(true);
        }
    </script>
</head>
<body>
    <h1>Random Images</h1>

    <%-- Java code to generate random image URLs --%>
    <% 
        String[] imageUrls = {
            "image1.jpg",
            "image2.jpg",
            "image3.jpg",
            // Add more image URLs as needed
        };

        Random random = new Random();
        int randomIndex = random.nextInt(imageUrls.length);
        String randomImageUrl = imageUrls[randomIndex];
    %>

    <%-- Display the random image --%>
    <img src="<%= randomImageUrl %>" alt="Random Image">

    <br>
    
    <%-- Button to generate a new random image --%>
    <button onclick="generateRandomImage()">Generate New Random Image</button>

</body>
</html>
