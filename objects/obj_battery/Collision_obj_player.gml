// Check if the battery level is less than 50
if (global.batteryTotal < 50) {
    // Recharge the battery by 50 units
    global.batteryTotal += 50;
    
    // Make sure the battery does not exceed 50
    if (global.batteryTotal > 50) {
        global.batteryTotal = 50;
    }
    
    // Consider removing instance_destroy() or using it in a specific condition
    // instance_destroy();
}

// Else block can be omitted since the code already handles cases where batteryTotal >= 50

else
instance_destroy();