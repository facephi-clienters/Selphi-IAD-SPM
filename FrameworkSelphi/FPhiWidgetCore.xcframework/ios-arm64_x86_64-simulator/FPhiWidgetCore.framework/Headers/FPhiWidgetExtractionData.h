
#import <Foundation/Foundation.h>
#import "FPhiWidgetExtractionRecord.h"

#import <FPBExtractoriOS/FPBExtractoriOS.h>

/**
 Data provided by the extraction process
 */
@interface FPhiWidgetExtractionData : NSObject<NSCopying>

/**
 array of images extracted from camera. When extraction process finish and status = UCFinish, this array contains only valid images used to extracting patterns.
 Each element of array is a ExtractionRecord containing image data, extraction time, etc...
 Maximum length of array is determined by maxNumPatterns integer.
 */
@property (nonatomic) NSMutableArray *images;

/**
 Best image based on the FacialScoreDiagnostic
 */
@property (nonatomic) FPhiWidgetExtractionRecord *bestImage;

/**
Best image cropped based on the FacialScoreDiagnostic
*/
@property (nonatomic) FPhiWidgetExtractionRecord *bestImageCropped;

/**
 Results of a extraction process.
 */
@property (nonatomic) FPBExtractionResult *result;


/**
 QR decoded data if available
 */
@property (nonatomic) NSString *qrData;

/**
 Facial score diagnostic extracted from the best image
 */
@property (nonatomic) int facialScoreDiagnostic;


/**
 IADBundle
 */
@property (nonatomic) NSData *iadBundle;

/**
 Statistics in JSON format
 */
@property (nonatomic) NSString *statistics;

@end
