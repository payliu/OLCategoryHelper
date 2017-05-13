Pod::Spec.new do |s|
  s.name     = 'OLCategoryHelper'
  s.version  = '0.0.5'
  s.license  = 'MIT License'
  s.summary  = 'A Category Library of Objective-C'
  s.description  = <<-DESC
                   OLCategoryHelper is a Library contain many helpful categoris.
                   To Exned Cocoa Framework or some popular Framework.
                   Jusy use specified category you need.

                   DESC
  s.homepage = 'https://github.com/payliu/OLCategoryHelper'
  s.author   = { 'Pay Liu'           => 'payliu@gmail.com',
                 'Josh'              => 'josh@octalord.com' }

  s.source   = { :git => 'https://github.com/payliu/OLCategoryHelper.git', :tag => '0.0.5' }
  #s.source   = { :git => 'https://github.com/payliu/OLCategoryHelper.git', :commit => '8564bf5' }

  s.platform = :ios, '8.0'

  s.requires_arc = false

  # category group
  s.subspec 'Category' do |category|
    category.source_files = 'src/Category'

    # sub group of Category group.
    category.subspec 'Definition' do |definition|
      definition.dependency 'OLCategoryHelper/Definition'
    end

    category.subspec 'Math' do |math|
      math.dependency 'OLCategoryHelper/Math+Degrees'
    end

    category.subspec 'NSArray' do |nsarray|
      nsarray.dependency 'OLCategoryHelper/NSArray+JSON'
    end

    category.subspec 'NSData' do |nsdata|
      nsdata.dependency 'OLCategoryHelper/NSData+AES'
      nsdata.dependency 'OLCategoryHelper/NSData+MD5'
    end

    category.subspec 'NSDate' do |nsdate|
      nsdate.dependency 'OLCategoryHelper/NSDate+Translator'
    end

    category.subspec 'NSDictionary' do |nsdictionary|
      nsdictionary.dependency 'OLCategoryHelper/NSDictionary+JSON'
    end

    category.subspec 'NSNumber' do |nsnumber|
      nsnumber.dependency 'OLCategoryHelper/NSNumber+Date'
      nsnumber.dependency 'OLCategoryHelper/NSNumber+Random'
    end

    category.subspec 'NSString' do |nsstring|
      nsstring.dependency 'OLCategoryHelper/NSString+Blank'
      nsstring.dependency 'OLCategoryHelper/NSString+BOOL'
      nsstring.dependency 'OLCategoryHelper/NSString+Contains'
      nsstring.dependency 'OLCategoryHelper/NSString+InterfaceOrientation'
      nsstring.dependency 'OLCategoryHelper/NSString+Append'
      nsstring.dependency 'OLCategoryHelper/NSString+MD5'
    end

    category.subspec 'UIColor' do |uicolor|
      uicolor.dependency 'OLCategoryHelper/UIColor+HexString'
      uicolor.dependency 'OLCategoryHelper/UIColor+RGB'
    end

    category.subspec 'UIDevice' do |uidevice|
      uidevice.dependency 'OLCategoryHelper/UIDevice+Enumerator'
      uidevice.dependency 'OLCategoryHelper/UIDevice+Resolutions'
    end

    category.subspec 'UIImage' do |uiimage|
      uiimage.dependency 'OLCategoryHelper/UIImage+H568'
    end

    category.subspec 'UINavigationController' do |uinavigationcontroller|
      uinavigationcontroller.dependency 'OLCategoryHelper/UINavigationController+OrientationSettings'
      uinavigationcontroller.dependency 'OLCategoryHelper/UINavigationController+Pilot'
    end

    category.subspec 'UIView' do |uiview|
      uiview.dependency 'OLCategoryHelper/UIView+ViewFrameGeometry'
    end

    category.subspec 'UISegmentedControl' do |uisegmentedcontrol|
      uisegmentedcontrol.dependency 'OLCategoryHelper/UISegmentedControl+Configure'
    end

    category.subspec 'UISplitViewController' do |uisplitviewcontroller|
      uisplitviewcontroller.dependency 'OLCategoryHelper/UISplitViewController+ToggleMasterView'
    end

  end


  # individual category
  # Definition
  s.subspec 'Definition' do |definition|
    definition.source_files = 'src/Category/Definition'
  end

  # Math
  s.subspec 'Math+Degrees' do |math_degrees|
    math_degrees.source_files = 'src/Category/Math/Math+Degrees'
  end

  # NSArray
  s.subspec 'NSArray+JSON' do |nsarray_json|
    nsarray_json.source_files = 'src/Category/NSArray/NSArray+JSON'
  end

  # NSData
  s.subspec 'NSData+AES' do |nsdata_aes|
    nsdata_aes.source_files = 'src/Category/NSData/NSData+AES'
  end

  s.subspec 'NSData+MD5' do |nsdata_md5|
    nsdata_md5.source_files = 'src/Category/NSData/NSData+MD5'
  end

  # NSDate
  s.subspec 'NSDate+Translator' do |nsdate_translator|
    nsdate_translator.source_files = 'src/Category/NSDate/NSDate+Translator'
  end

  # NSDictionary
  s.subspec 'NSDictionary+JSON' do |nsdictionary_json|
    nsdictionary_json.source_files = 'src/Category/NSDictionary/NSDictionary+JSON'
  end

  # NSNumber
  s.subspec 'NSNumber+Date' do |nsnumber_date|
    nsnumber_date.source_files = 'src/Category/NSNumber/NSNumber+Date'
  end
  s.subspec 'NSNumber+Random' do |nsnumber_random|
    nsnumber_random.source_files = 'src/Category/NSNumber/NSNumber+Random'
  end

  # NSString
  s.subspec 'NSString+Blank' do |nsstring_blank|
    nsstring_blank.source_files = 'src/Category/NSString/NSString+Blank'
    nsstring_blank.dependency 'OLCategoryHelper/NSString+BOOL'
  end

  s.subspec 'NSString+BOOL' do |nsstring_bool|
    nsstring_bool.source_files = 'src/Category/NSString/NSString+BOOL'
  end

  s.subspec 'NSString+Contains' do |nsstring_contains|
    nsstring_contains.source_files = 'src/Category/NSString/NSString+Contains'
  end

  s.subspec 'NSString+InterfaceOrientation' do |nsstring_interfaceorientation|
    nsstring_interfaceorientation.source_files = 'src/Category/NSString/NSString+InterfaceOrientation'
  end

  s.subspec 'NSString+Append' do |nsstring_append|
    nsstring_append.source_files = 'src/Category/NSString/NSString+Append'
  end

  s.subspec 'NSString+MD5' do |nsstring_md5|
    nsstring_md5.source_files = 'src/Category/NSString/NSString+MD5'
  end

  # UIColor
  s.subspec 'UIColor+HexString' do |uicolor_hexstring|
    uicolor_hexstring.source_files = 'src/Category/UIColor/UIColor+HexString'
  end
  s.subspec 'UIColor+RGB' do |uicolor_rgb|
    uicolor_rgb.source_files = 'src/Category/UIColor/UIColor+RGB'
  end

  # UIDevice
  s.subspec 'UIDevice+Enumerator' do |uidevice_enumerator|
    uidevice_enumerator.source_files = 'src/Category/UIDevice/UIDevice+Enumerator'
  end
  s.subspec 'UIDevice+Resolutions' do |uidevice_resolutions|
    uidevice_resolutions.source_files = 'src/Category/UIDevice/UIDevice+Resolutions'
  end

  # UIImage
  s.subspec 'UIImage+H568' do |uiimage_h568|
    uiimage_h568.source_files = 'src/Category/UIImage/UIImage+H568'
    uiimage_h568.dependency 'OLCategoryHelper/UIDevice+Resolutions'
  end

  # UINavigationController
  s.subspec 'UINavigationController+OrientationSettings' do |uinavigationcontroller_orientationSettings|
    uinavigationcontroller_orientationSettings.source_files = 'src/Category/UINavigationController/UINavigationController+OrientationSettings'
  end

  s.subspec 'UINavigationController+Pilot' do |uinavigationcontroller_pilot|
    uinavigationcontroller_pilot.source_files = 'src/Category/UINavigationController/UINavigationController+Pilot'
  end

  # UIView
  s.subspec 'UIView+ViewFrameGeometry' do |uiview_viewframegeometry|
    uiview_viewframegeometry.source_files = 'src/Category/UIView/UIView+ViewFrameGeometry'
  end

  #UISegmentedControl
  s.subspec 'UISegmentedControl+Configure' do |uisegmentedcontrol_configure|
    uisegmentedcontrol_configure.source_files = 'src/Category/UISegmentedControl/UISegmentedControl+Configure'
  end

  #UISplitViewController
  s.subspec 'UISplitViewController+ToggleMasterView' do |uisplitviewcontroller_togglemasterview|
    uisplitviewcontroller_togglemasterview.source_files = 'src/Category/UISplitViewController/UISplitViewController+ToggleMasterView'
  end

end
