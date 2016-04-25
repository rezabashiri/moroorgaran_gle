var viewer;
var id;
function init() {
    viewer = new Seadragon.Viewer("container");
    viewer.openDzi("/GolestaneShohada/Design/GolestanMap/GeneratedImages/dzc_output.xml");
   
    viewer.addEventListener("open", addoverlay);
 

   
}
function setnum(num) {
    id = num;
}
function getghateposition() {
    var point = new Seadragon.Point();
    if (id == 1) {
        point.x = 0.4164;
        point.y = 0.6733;
    }
    if (id == 2) {
        point.x=0.5020;
        point.y=0.6542;
    }

    if (id == 3) {
        point.x=0.4056;
        point.y=0.6349;
        }
    if (id == 4) {
        point.x=0.4903;
        point.y=0.6103;
        }
    if (id == 5) {
        point.x=0.5127;
        point.y=0.5653;
        }
    if (id == 6) {
        point.x=0.5856;
        point.y=0.5632;
        }
    if (id == 7) {
        point.x=0.6605;
        point.y=0.4829;
        }
    if (id == 8) {
        point.x=0.7098;
        point.y=0.4486;
        }
    if (id == 9) {
        point.x=0.7045;
        point.y=0.5321;
        }
    if (id == 10) {
        point.x=0.7377;
        point.y=0.4925;
        }
    if (id == 11) {
        point.x=0.7526;
        point.y=0.5064;
        }
    if (id == 12) {
        point.x=0.7687;
        point.y=0.4689;
        }
    if (id == 13) {
        point.x=0.8137;
        point.y=0.4743;
        }
    if (id == 14) {
        point.x=0.8062;
        point.y=0.4486;
        }
    if (id == 15) {
        point.x=0.8212;
        point.y=0.4186;
        }
    if (id == 16) {
        point.x=0.8426;
        point.y=0.4015;
        }
    if (id == 17) {
        point.x=0.6520;
        point.y=0.4057
        }
    if (id == 18) {
        point.x=0.6487;
        point.y=0.4507;
        }
    if (id == 19) {
        point.x=0.6391;
        point.y=0.4272;
        }
    if (id == 20) {
        point.x=0.6087;
        point.y=0.4173;
        }
    if (id == 21) {
        point.x=0.6312;
        point.y=0.3541;
        }
    if (id == 22) {
        point.x=0.5295;
        point.y=0.3916;
        }
    if (id == 23) {
        point.x=0.3753;
        point.y=0.3413;
        }
    if (id == 24) {
        point.x=0.4026;
        point.y=0.3825;
        }
    if (id == 25) {
        point.x=0.3603;
        point.y=0.4136;
        }
    if (id == 26) {
        point.x=0.3083;
        point.y=0.4377;

        }
    if (id == 27) {
        point.x=0.2880;
        point.y=0.3734;
        }
    if (id == 28) {
        point.x=0.2125;
        point.y=0.3149;
        }
    if (id == 29) {
        point.x=0.2357;
        point.y=0.4634;
        }
    if (id == 30) {
        point.x=0.2793;
        point.y=0.4998;
        }
    if (id == 31) {
        point.x=0.2517;
        point.y=0.5180;
        }
    if (id == 32) {
        point.x=0.2233;
        point.y=0.5538;
        }
    if (id == 33) {
        point.x=0.3428;
        point.y=0.5599;
        }
    if (id == 34) {
        point.x=0.3299;
        point.y = 0.5990;
        }
    return point;

}


function addoverlay(viewer) {
    if (!viewer.isOpen()) {
        return;
    }
    var img = document.createElement("img");
    var point = getghateposition( );
    // island off the coast of africa

    var placement = Seadragon.OverlayPlacement.BOTTOM;

    img.src = "/GolestaneShohada/Design/fa/images/Pin_Map.png";
    viewer.drawer.addOverlay(img, point, placement);
    var div = document.createElement("div");
    //var rect = new Seadragon.Rect(
    //    0.15226931601316998, 0.11237404811046009,
    //    0.1487579850430218, 0.06805920884321259);
    // roughly the united states

    //div.className = "overlay";
    //viewer.drawer.addOverlay(div, rect);
}

Seadragon.Utils.addEvent(window, "load", init);