<jsp:useBean id = "rotator" scope= "session" class = "Controlador.Rotator"/>

    <% rotator.nextAd(); %>
    <p>
        <a href = "<jsp:getProperty name= "rotator"
                         property= "link" />" target="_blank">
            
            <img src= "<jsp:getProperty name= "rotator"
                 property= "image" />" alt = "<%rotator.getNameAd();%>" class="img-fluid"/>
        </a> 
    </p>