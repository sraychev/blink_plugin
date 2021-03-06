//
//  PPPolishIDBackRecognizerSettings.h
//  MicroBlinkDev
//
//  Created by Jura Skrlec on 19/10/2017.
//

#import "PPRecognizerSettings.h"

/**
 * Settings class for configuring Polish Back ID Recognizer.
 *
 * Polish Back ID recognizer is used for scanning back side of Polish ID.
 */
PP_CLASS_AVAILABLE_IOS(6.0)
@interface PPPolishIDBackRecognizerSettings : PPRecognizerSettings

/**
 * Name of the image sent to didOutputMetadata method of scanDelegate object that contains full document.
 * This image will be sent to scan delegate during recognition process if displaying of full document image
 * is enabled via displayFullDocumentImage property and receiving of dewarpedImage in MetadataSettings is enabled.
 */
+ (NSString *)FULL_DOCUMENT_IMAGE;

/**
 * Sets whether full document image of ID card should be sent to didOutputMetadata method of scanDelegate object.
 * If you want to recieve this image, be sure to enable dewarpedImage in MetadataSettings.
 *
 * Default: NO
 */
@property (nonatomic, assign) BOOL displayFullDocumentImage;

/**
 * Defines if glare detection should be turned on/off for back side of Polish IDs.
 *
 * Default: YES
 */
@property (nonatomic, assign) BOOL detectGlare;

@end
