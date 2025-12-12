//
//  FPhiCamera.h
//  FPhiWidgetCore
//

#ifndef FPhiCamera_h
#define FPhiCamera_h

typedef NS_ENUM(NSInteger, PhiCameraFacing)
{
    PhiCameraFacingFront,
    PhiCameraFacingBack,
};

typedef NS_ENUM(NSInteger, PhiCameraFocus)
{
    PhiCameraFocusInfinity,
    PhiCameraFocusContinuosVideo,
};

typedef NS_ENUM(NSInteger, PhiPixelFormat)
{
    PhiPixelFormatBGRA,
};

typedef void(^onFrameBlock)(AVCaptureOutput *output, CMSampleBufferRef sampleBuffer, AVCaptureConnection *connection);
typedef void(^onMetadataBlock)(NSString *metadataId, NSObject *data);

@interface FPhiCamera : NSObject

-(void)create:(PhiCameraFacing)facingMode
             :(int)previewWidth
             :(int)previewHeight
             :(CALayer *)layer
             :(PhiCameraFocus)focusMode
             :(BOOL)qrMode
             :(onFrameBlock)frameCallback
             :(onMetadataBlock)metadataCallback
             :(NSError **)error;

-(NSObject *)getPreview;
-(void)setPreviewFrame:(CGRect)frame;
-(void)setPreviewOrientation:(AVCaptureVideoOrientation)orientation;

-(BOOL)setLicense:(NSString *)license;
-(BOOL)askCameraPermissions;
-(void)destroy;
-(void)startPreview;
-(void)stopPreview;
-(BOOL)isRunning;
-(CGSize)getPreviewSize;
-(BOOL)outputImageNeedsRotation;
-(void)reset;
-(int)getFaceStabilizedStatus;
+(BOOL)providesStabilization;
-(void)setFocusWithMode:(AVCaptureFocusMode)focusMode exposeWithMode:(AVCaptureExposureMode)exposureMode atDevicePoint:(CGPoint)point monitorSubjectAreaChange:(BOOL)monitorSubjectAreaChange enableTorch:(BOOL)enableTorch;
@end

#endif /* FPhiCamera_h */
