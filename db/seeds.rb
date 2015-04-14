# Seed Allowed Stitch Counts for Swatches
[3,4,5,6,7].each {|stitches| Swatch.create(stitches_per_inch: stitches)}

#Seed Allowed US Needle Sizes for Swatches
['00', '0', '1',
 '1.5', '2', '2.5',
 '3', '4', '5',
 '6', '7', '8',
 '9', '10', '10.5',
 '11', '13', '15', '17',
 '19', '35', '50'].each {|sizes| Swatch.create(needle_size: sizes)}

#Seed Allowed Chest Measurement Sizes for Measurements
[26, 28, 30, 32, 34,
 36, 38, 40, 42, 44,
 46, 48, 50, 52, 54 ].each {|inches| Measurement.create(chest_circumference: inches)}

# Seed Allowed Pattern Types for Patterns
['Seamless Yoke Cardigan',
 'Seamless Yoke Pullover',
 'Raglan Cardigan Crew-Neck',
 'Raglan Cardigan V-Neck',
 'Raglan Pullover Crew-Neck',
 'Raglan Pullover V-Neck',
 'Saddle-Shoulder Cardigan Crew-Neck',
 'Saddle-Shoulder Cardigan V-Neck',
 'Saddle-Shoulder Pullover Crew-Neck',
 'Saddle-Shoulder Pullover V-Neck',
 'Set-In Sleeve Cardigan Crew-Neck',
 'Set-In Sleeve Cardigan V-Neck',
 'Set-In Sleeve Pullover Crew-Neck',
 'Set-In Sleeve Pullover V-Neck' ].each {|types| Pattern.create(pattern_type: types)}
