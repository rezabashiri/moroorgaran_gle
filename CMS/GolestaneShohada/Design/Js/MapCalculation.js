var viewer;
var mouseDownPixel;
var mouseDownCenter;
function init() {
    viewer = new Seadragon.Viewer("container");
    viewer.openDzi("GolestaneShohada/Design/GolestanMap/GeneratedImages/dzc_output.xml");
    viewer.addEventListener("open", showViewport);
    viewer.addEventListener("animation", showViewport);
    //viewer.addEventListener("open", addoverlay);
    Seadragon.Utils.addEvent(viewer.elmt, "mousemove",
      showMouse);

    viewer.tracker.pressHandler = function (tracker, position) {
        mouseDownPixel = position;
        mouseDownCenter = viewer.viewport.getCenter();
        // console.log('pressHandler', position.x, position.y);
        var location = new Seadragon.Point(
                 parseInt(position.x),
                 parseInt(position.y)
         );
        var pointPos = viewer.viewport.pointFromPixel(location);
        getghate(pointPos);
    };
    viewer.tracker.dragHandler = onCanvasDrag;
    viewer.tracker.setTracking(true);
}
function onCanvasDrag(tracker, position, delta, shift) {
    if (viewer.viewport) {
        // note that in both cases, we're negating delta pixels since
        // dragging is opposite of panning. analogy is adobe viewer,
        // dragging up scrolls down.
        //if (SeadragonConfig.constrainDuringPan) {
            var deltaPixels = position.minus(mouseDownPixel);
            var deltaPoints = viewer.viewport.deltaPointsFromPixels(deltaPixels.negate(), true);
            viewer.viewport.panTo(mouseDownCenter.plus(deltaPoints));
            viewer.viewport.applyConstraints();
        //} else {
        //    viewer.viewport.panBy(viewport.deltaPointsFromPixels(delta.negate(), true));
        //}
    }
}
function CheckGhate(idghate) {
    $.ajax({
        type: "POST",
        url: "/GolestaneShohada/WebServices/GolestanWebservice.asmx/GetShahidByGhate",
        data: '{"IDGhate":"' + idghate + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (msg) {
            alert(msg.d);

        },
        error: function (xhr, status, error) {

            //alert(xhr.responseText);

        }
    });
}
function getghate(point) {

    if (point.x >= 0.3803 && point.x <= 0.4514 && point.y > 0.6498 && point.y <= 0.7067)
        CheckGhate(1);
    if (point.x >= 0.4927 && point.y >= 0.6445 && point.x <= 0.5184 && point.y <= 0.6690)
        alert("قطعه شماره 2");
    if (point.x >= 0.4580 && point.y >= 0.6245 && point.x <= 0.4742 && point.y <= 0.6445)
        alert("قطعه شماره 3");
    if (point.x >= 0.4753 && point.y >= 0.6029 && point.x <= 0.4989 && point.y <= 0.6232)
        alert("قطعه شماره 4");
    if (point.x >= 0.4937 && point.y >= 0.5498 && point.x <= 0.5412 && point.y <= 0.5938)
        alert("قطعه شماره 5");
    if (point.x >= 0.5717 && point.y >= 0.5547 && point.x <= 0.6044 && point.y <= 0.5863)
        alert("قطعه شماره6");
    if (point.x >= 0.6656 && point.y >= 0.4802 && point.x <= 0.6713 && point.y <= 0.5049)
        alert("قطعه شماره7");
    if (point.x >= 0.6942 && point.y >= 0.4439 && point.x <= 0.7307 && point.y <= 0.4805)
        alert("قطعه شماره8");
    if (point.x >= 0.6997 && point.y >= 0.5353 && point.x <= 0.7176 && point.y <= 0.7593)
        alert("قطعه شماره9");
    if (point.x >= 0.7252 && point.y >= 0.4924 && point.x <= 0.7405 && point.y <= 0.5098)
        alert("قطعه شماره10");
    if (point.x >= 0.7397 && point.y >= 0.5123 && point.x <= 0.7613 && point.y <= 0.5285)
        alert("قطعه شماره11");
    if (point.x >= 0.7613 && point.y >= 0.4707 && point.x <= 0.7805 && point.y <= 0.4894)
        alert("قطعه شماره12");
    if (point.x >= 0.8017 && point.y >= 0.4783 && point.x <= 0.8171 && point.y <= 0.4953)
        alert("قطعه شماره13");
    if (point.x >= 0.7924 && point.y >= 0.4545 && point.x <= 0.8081 && point.y <= 0.4097)
        alert("قطعه شماره14");
    if (point.x >= 0.8128 && point.y >= 0.4231 && point.x <= 0.8338 && point.y <= 0.4388)
        alert("قطعه شماره15");
    if (point.x >= 0.8323 && point.y >= 0.4035 && point.x <= 0.8553 && point.y <= 0.4201)
        alert("قطعه شماره16");
    if (point.x >= 0.6478 && point.y >= 0.4054 && point.x <= 0.6642 && point.y <= 0.4236)
        alert("قطعه شماره17");
    if (point.x >= 0.6353 && point.y >= 0.4563 && point.x <= 0.6531 && point.y <= 0.4712)
        alert("قطعه شماره18");
    if (point.x >= 0.6307 && point.y >= 0.4323 && point.x <= 0.6444 && point.y <= 0.4461)
        alert("قطعه شماره19");
    if (point.x >= 0.6000 && point.y >= 0.4183 && point.x <= 0.6238 && point.y <= 0.4372)
        alert("قطعه شماره20");
    if (point.x >= 0.6170 && point.y >= 0.3521 && point.x <= 0.6481 && point.y <= 0.3672)
        alert("قطعه شماره21");
    if (point.x >= 0.5151 && point.y >= 0.3884 && point.x <= 0.5483 && point.y <= 0.4146)
        alert("قطعه شماره22");
    if (point.x >= 0.3607 && point.y >= 0.3420 && point.x <= 0.3870 && point.y <= 0.3653)
        alert("قطعه شماره23");
    if (point.x >= 0.3845 && point.y >= 0.3868 && point.x <= 0.4209 && point.y <= 0.4103)
        alert("قطعه شماره24");
    if (point.x >= 0.3481 && point.y >= 0.4196 && point.x <= 0.3770 && point.y <= 0.4406)
        alert("قطعه شماره25");
    if (point.x >= 0.2963 && point.y >= 0.4390 && point.x <= 0.3203 && point.y <= 0.4602)
        alert("قطعه شماره26");
    if (point.x >= 0.2795 && point.y >= 0.3765 && point.x <= 0.3022 && point.y <= 0.3961)
        alert("قطعه شماره27");
    if (point.x >= 0.1583 && point.y >= 0.3333 && point.x <= 0.2521 && point.y <= 0.3513)
        alert("قطعه شماره28");
    if (point.x >= 0.2269 && point.y >= 0.4670 && point.x <= 0.2500 && point.y <= 0.4850)
        alert("قطعه شماره29");
    if (point.x >= 0.2696 && point.y >= 0.5021 && point.x <= 0.2931 && point.y <= 0.5203)
        alert("قطعه شماره30");
    if (point.x >= 0.2380 && point.y >= 0.5219 && point.x <= 0.2700 && point.y <= 0.5450)
        alert("قطعه شماره31");
    if (point.x >= 0.2070 && point.y >= 0.5227 && point.x <= 0.2425 && point.y <= 0.5763)
        alert("قطعه شماره32");
    if (point.x >= 0.3346 && point.y >= 0.5631 && point.x <= 0.3552 && point.y <= 0.5796)
        alert("قطعه شماره33");
    if (point.x >= 0.3113 && point.y >= 0.6019 && point.x <= 0.3302 && point.y <= 0.6184)
        alert("قطعه شماره34");
}


 
function addoverlay(viewer) {
    if (!viewer.isOpen()) {
        return;
    }
    //var img = document.createElement("img");
    //var point = new Seadragon.Point(
    //    0.6479860647626986, 0.21632549161594064);
    //// island off the coast of africa

    //var placement = Seadragon.OverlayPlacement.BOTTOM;

    //img.src = "pushpin.gif";
    //viewer.drawer.addOverlay(img, point, placement);
    var div = document.createElement("div");
    var rect = new Seadragon.Rect(
        0.15226931601316998, 0.11237404811046009,
        0.1487579850430218, 0.06805920884321259);
    // roughly the united states

    div.className = "overlay";
    viewer.drawer.addOverlay(div, rect);
}
function showMouse(event) {
    // getMousePosition() returns position relative to page,
    // while we want the position relative to the viewer
    // element. so subtract the difference.
    var pixel = Seadragon.Utils.getMousePosition(event).minus
      (Seadragon.Utils.getElementPosition(viewer.elmt));

    document.getElementById("mousePixels").innerHTML
      = toString(pixel, true);

    if (!viewer.isOpen()) {
        return;
    }

    var point = viewer.viewport.pointFromPixel(pixel);

    document.getElementById("mousePoints").innerHTML
      = toString(point, true);
}

function showViewport(viewer) {
    if (!viewer.isOpen()) {
        return;
    }
    var sizePoints = viewer.viewport.getBounds().getSize();
    var sizePixels = viewer.viewport.getContainerSize();
    // or = viewer.viewport.deltaPixelsFromPoints(sizePoints);

    document.getElementById("viewportSizePoints").innerHTML
      = toString(sizePoints, false);

    document.getElementById("viewportSizePixels").innerHTML
      = toString(sizePixels, false);
}
var PRECISION = 4;
function toString(point, useParens) {
    var x = point.x;
    var y = point.y;

    if (x % 1 || y % 1) {     // if not an integer,
        x = x.toFixed(PRECISION); // then restrict number of
        y = y.toFixed(PRECISION); // decimal places
    }

    if (useParens) {
        return "(" + x + ", " + y + ")";
    } else {
        return x + " x " + y;
    }
}



Seadragon.Utils.addEvent(window, "load", init);