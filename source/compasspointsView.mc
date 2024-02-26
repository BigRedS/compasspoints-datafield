import Toybox.Activity;
import Toybox.Lang;
import Toybox.Time;
import Toybox.WatchUi;
import Toybox.Math;

class compasspointsView extends WatchUi.SimpleDataField {

    // Set the label of the data field here.
    function initialize() {
        SimpleDataField.initialize();
        label = "Direction";
    }

    // The given info object contains all the current workout
    // information. Calculate a value and return it in this method.
    // Note that compute() and onUpdate() are asynchronous, and there is no
    // guarantee that compute() will be called before onUpdate().
    function compute(info){
        var degrees = info.track * (180/ Math.PI);
        var point = "n/a";

        if( degrees <= 45 ){
            point = "North";
        }else if(degrees < 135){
            point = "East";
        }else if (degrees < 225){
            point = "South";
        }else if (degrees < 315){
            point = "West";
        }else if (degrees < 360){
            point = "North";
        }

        return point.toString();
    }

}
