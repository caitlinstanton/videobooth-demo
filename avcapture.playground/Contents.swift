AVCaptureSession *session = [[AVCaptureSession alloc] init];
[session setSessionPreset:AVCaptureSessionPresetLow];
AVCaptureDevice *inputDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
AVCaptureDeviceInput *deviceInput = [AVCaptureDeviceInput deviceInputWithDevice:inputDevice error:&error];
if ( [session canAddInput:deviceInput] )
[session addInput:deviceInput];

AVCaptureVideoPreviewLayer *previewLayer = [[AVCaptureVideoPreviewLayer alloc] initWithSession:session];
[previewLayer setVideoGravity:AVLayerVideoGravityResizeAspectFill];

CALayer *rootLayer = [[self view] layer];
[rootLayer setMasksToBounds:YES];
[previewLayer setFrame:CGRectMake(-70, 0, rootLayer.bounds.size.height, rootLayer.bounds.size.height)];
[rootLayer insertSublayer:previewLayer atIndex:0];
