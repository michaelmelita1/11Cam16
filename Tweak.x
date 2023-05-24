#import <UIKit/UIKit.h>

%hook CAMViewfinderViewController 
-(BOOL)_shouldUseZoomControlInsteadOfSlider { //New Camera App Code
    return YES;
}
%end
%hook CAMCaptureCapabilities
-(bool)isZoomPlatterSupported {
                return YES;
}
-(long long)zoomDialStyle {
		return 1;
}
-(bool)allowDynamicShutterZoom {
                return YES;
}
-(bool)isCTMSupported {
                return YES;
}
-(bool)isCTMSupportSupressed {
                 return NO;
}
-(bool)deviceSupportsCTM {
                 return YES;
}
-(bool)sfCameraFontSupported {
                return YES;
}
-(bool)isLivePhotoAutoModeSupported {
		return YES;
}
-(bool)isExposureSliderSupported {
                return YES;
}
-(bool)arePortraitEffectsSupported {     //Portrait Lighting Code
		return YES;
}
-(long long)supportedPortraitLightingVersion {	
                return 2;
}
-(bool)isBackLiveStageLightSupported {
		return YES;
}
-(bool)isPortraitEffectIntensitySupported {
		return YES;
}
-(bool)isLivePreviewSupportedForLightingType:(long long)arg1 devicePosition:(long long)arg2 {
		return YES;
		arg1 = 1;
		arg2 = 1;
}
-(bool)isImageAnalysisSupported {                       //Live Text Code
                return YES;
}
-(bool)isImageAnalysisButtonAlwaysVisible {
                return YES;
}
-(bool)isSpatialOverCaptureSupported {                  //View Outside the Frame Code
                return YES;
}
-(bool)isBackSpatialOverCaptureSupported {                  
                return YES;
}
%end
%hook CAMDynamicShutterControl

// Fixes shutter
- (BOOL)_shouldShortPressOnTouchDown {
	return true;
}

- (BOOL)_shouldShortPressOnTouchUp {
	return true;
}

%end
%hook AVCaptureDeviceFormat				//Depth Control and Intensity Control Code
-(float)minSimulatedAperture {
		return 1.4;
}   
-(float)maxSimulatedAperture {
		return 16;
}
-(float)defaultSimulatedAperture {
		return 4.5;
}
-(float)minPortraitLightingEffectStrength {
		return 0;
}
-(float)maxPortraitLightingEffectStrength {
		return 100;
}
-(float)defaultPortraitLightingEffectStrength {
		return 50;
}
%end
