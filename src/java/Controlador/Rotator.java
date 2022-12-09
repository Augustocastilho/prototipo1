package Controlador;

/**
 *
 * @author Augusto
 */
public class Rotator {
    private final String images[] = {
        "images/aws.png",
        "images/azure.png",
        "images/cloud-logo.png",
        "images/genshin.jpg",
        "images/trivago.jpg"
    };
    
    private final String links[] = {
        "https://aws.azamon.com/",
        "https://azure.microsoft.com/pt-br/",
        "https://cloud.google.com/",
        "https://genshin.hoyoverse.com/",
        "https://www.trivago.com.br/"
        
    };
    
    private int selectedIndex = 0;
    
    public String getImage(){
        return images[selectedIndex];
    };
    
    public String getNameAd(){
        String amazon = "Amazon";
        String azure = "Azure";
        String cloud = "Cloud";
        String genshin = "Genshin";
        String trivago = "Trivago";
        
        switch (selectedIndex) {
            case 0:
                return amazon;
            case 1:
                return azure;
            case 3:
                return cloud;
            case 4:
                return genshin;
            default:
                return trivago;
        }
    };
    
    public String getLink(){
        return links[ selectedIndex ];
    };
    
    public void nextAd(){
        selectedIndex = (selectedIndex + 1) % images.length;
    }
}
