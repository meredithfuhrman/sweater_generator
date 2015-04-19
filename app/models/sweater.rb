class Sweater < ActiveRecord::Base
  belongs_to :user
  belongs_to :swatch
  belongs_to :measurement
  belongs_to :pattern

  validates_presence_of :user
  validates_presence_of :swatch
  validates_presence_of :measurement
  validates_presence_of :pattern

#Yoke Methods
  def cast_on(swatch, chest)
    stitch_count =  [ [43, 47, 48, 52, 53, 55, 57, 60, 63, 65],
      [57, 60, 64, 68, 71, 71, 75, 77, 81, 85],
      [72, 75, 80, 85, 89, 91, 95, 100, 103, 108],
      [85, 91, 96, 101, 107, 107, 112, 117, 123, 128],
      [101, 107, 112, 120, 125, 127, 132, 139, 144, 151] ]

  "With the needle size from your swatch and using a provisional cast-on method,
   cast on #{stitch_count[swatch-3][chest/2 - 18]} stitches."
  end

  def yoke1(pattern)
    if pattern == 2
      "Place marker and join for working in the round. Rounds begin at left back neck."
    else
      "Rounds begin at center front."
    end
  end

  def yoke2
    "Increase Row 1: (RS) *K2, M1; repeat from * If one stitchs remains, work as K1."
  end

  def stitch_count1(swatch, chest)
    stitch_count = [ [64, 70, 72, 78, 79, 82, 85, 90, 94, 97],
    [85, 90, 96, 102, 106, 106, 112, 115, 121, 127],
    [108, 112, 120, 127, 133, 136, 142, 150, 154, 162],
    [127, 136, 144, 151, 160, 160, 168, 175, 184, 192],
    [151, 160, 168, 180, 187, 190, 198, 208, 216, 226] ]

    "There will be #{stitch_count[swatch-3][chest/2 - 18]} stitches on the needle."
  end

  def increase1(swatch, chest)
    increases = [ [0, 0, 0, 0, 1, 0, 1, 0, 0, 1],
    [1, 0, 0, 0, 0, 0, 0, 1, 1, 1],
    [0, 0, 0, 1, 1, 0, 0, 0, 0, 0 ],
    [1, 0, 0, 1, 0, 0, 0, 1, 0, 0],
    [1, 0, 0, 0, 1, 0, 0, 0, 0, 0 ] ]

    if increases[swatch-3][chest/2 - 18] == 1
      "On next round, increase 1 stitch."
    else
      ""
    end
  end

  def stitch_count2(swatch, chest)
    if increase1(swatch, chest) == ""
      ""
    else
    stitch_count = [ [64, 70, 72, 78, 80, 82, 86, 90, 94, 98 ],
    [86, 90, 96, 102, 106, 106, 112, 116, 122, 128],
    [108, 112, 120, 128, 134, 136, 142, 150, 154, 162],
    [128, 136, 144, 152, 160, 160, 168, 176, 184, 192],
    [152, 160, 168, 180, 188, 190, 198, 208, 216, 226] ]

    "There will be #{stitch_count[swatch-3][chest/2 - 18]} stitches on the needle."
    end
  end

  def work_even1(chest)
    inches = [ 2, 2.25, 2.25, 2.5, 2.5, 2.5, 2.5, 2.5, 2.75, 2.75]

    "Work even until the yoke measures #{inches[chest/2 - 18]} inches."
  end

  def yoke3
    "Increase Row 2: (RS) *K2, M1; rep from *"
  end

  def stitch_count3(swatch, chest)
    stitch_count = [ [96, 105, 108, 117, 120, 123, 129, 135, 141, 147],
    [129, 135, 144, 153, 159, 159, 168, 174, 183, 192],
    [162, 168, 180, 192, 201, 204, 213, 225, 231, 243],
    [192, 204, 216, 228, 240, 240, 252, 264, 276, 288],
    [228, 240, 252, 270, 282, 285, 297, 312, 324, 339] ]

    "There will be #{stitch_count[swatch-3][chest/2 - 18]} stitches on the needle."
  end

  def work_even2(chest)
    inches = [4, 4.5, 4.5, 4.75, 5, 5, 5, 5, 5.25, 5.5]

    "Work even until the yoke measures #{inches[chest/2 - 18]} inches."
  end

  def yoke4
   "Increase Row 3: (RS)  *K3, M1; rep from *"
  end

  def stitch_count4(swatch, chest)
    stitch_count = [ [128, 140, 144, 156, 160, 164, 172, 180, 188, 196],
    [172, 180, 192, 204, 212, 212, 224, 232, 244, 256],
    [216, 224, 240, 256, 268, 272, 284, 300, 308, 324],
    [256, 272, 288, 304, 320, 320, 336, 352, 368, 384],
    [304, 320, 336, 360, 376, 380, 396, 416, 432, 452] ]

    "There will be #{stitch_count[swatch-3][chest/2 - 18]} stitches on the needle."
  end

  def work_even3(chest)
    inches = [6, 6.5, 6.75, 7, 7.25, 7.25, 7.5, 7.5, 7.75, 8]

    "Work even until the yoke measures #{inches[chest/2 - 18]} inches."
  end

  def yoke5
    "Increase Row 4: (RS) *K4, M1; rep from *"
  end

  def stitch_count5(swatch, chest)
    stitch_count = [ [160, 175, 180, 195, 200, 205, 215, 225, 235, 245],
    [215, 225, 240, 255, 265, 265, 280, 290, 305, 320],
    [270, 280, 300, 320, 335, 340, 355, 375, 385, 405],
    [320, 340, 360, 380, 400, 400, 420, 440, 460, 480],
    [380, 400, 420, 450, 470, 475, 495, 520, 540, 565] ]

    "There will be #{stitch_count[swatch-3][chest/2 - 18]} stitches on the needle."
  end

  def work_even4(chest)
    inches = [8, 8.5, 9, 9.25, 9.5, 9.5, 9.75, 10, 10.25, 10.5]

    "Work even until the yoke measures #{inches[chest/2 - 18]} inches."
  end

  def increase2(swatch, chest)
    increases = [ [4, 1, 4, 1, 4, 3, 1, 3, 1, 3],
    [1, 3, 4, 1, 3, 3, 0, 2, 3, 0 ],
    [2, 4, 4, 4, 1, 0, 1, 1, 3, 3],
    [4, 4, 4, 4, 4, 0, 0, 0, 0, 0],
    [0, 4, 4, 2, 2, 1, 1, 0, 0, 3] ]

    if increases[swatch-3][chest/2 - 18] == 0
      ""
    else
      "On the next row (RS), increase #{increases[swatch-3][chest/2 - 18]} stitches,
      placing the increases at the beginning and end of each set of sleeve stitches."
    end
  end

  def stitch_count6(swatch, chest)
    stitch_count = [ [164, 175, 184, 196, 204, 208, 215, 228, 236, 248],
    [216, 228, 244, 256, 268, 268, 280, 292, 308, 320],
    [272, 284, 304, 324, 336, 340, 356, 375, 388, 408],
    [324, 344, 364, 384, 404, 400, 420, 440, 360, 480],
    [380, 404, 424, 452, 472, 476, 496, 520, 540, 568] ]

    "There will be #{stitch_count[swatch-3][chest/2 - 18]} stitches on the needle."
  end

#Divide for Body and Sleeves
  def divide1(swatch, chest, pattern)
    if pattern == 1
      stitch_count = [ [24, 26, 27, 29, 30, 31, 32, 34, 35, 37],
      [32, 34, 36, 38, 40, 40, 42, 44, 46, 48],
      [40, 42, 45, 48, 50, 51, 53, 56, 58, 61],
      [48, 51, 54, 57, 60, 60, 63, 66, 68, 72],
      [56, 60, 64, 67, 70, 71, 74, 78, 81, 85] ]

      "With WS facing, work across #{stitch_count[swatch-3][chest/2 - 18]}
      stitches for the right front."
    else
      stitch_count = [ [48, 52, 54, 58, 60, 62, 64, 68, 70, 74],
          [64, 68, 72, 76, 80, 80, 84, 88, 92, 96],
          [80, 84, 90, 96, 100, 102, 106, 112, 116, 122],
          [96, 102, 108, 114, 120, 120, 126, 132, 138, 144],
          [112, 120, 125, 134, 140, 142, 148, 156, 162, 170]]

        "Work #{stitch_count[swatch-3][chest/2 - 18]} stitches across the back."
    end
  end

  def waste_yarn1(swatch, chest)
      stitch_count = [ [34, 36, 38, 40, 42, 42, 44, 46, 48, 50],
      [44, 46, 50, 52, 54, 54, 56, 58, 62, 64],
      [56, 58, 62, 66, 68, 68, 72, 76, 78, 82],
      [66, 70, 74, 78, 82, 80, 84, 88, 92, 96],
      [78, 82, 86, 92, 96, 96, 100, 104, 108, 114] ]

      "Place #{stitch_count[swatch-3][chest/2 - 18]} stitches on stitch holder
      or waste yarn for the right sleeve."
  end

  def cast_on1(swatch, chest)
    stitch_count = [ [6, 6, 6, 6, 6, 8, 8, 8, 8, 8],
    [8, 8, 8, 8, 8, 12, 12, 12, 12, 12],
    [10, 10, 10, 10, 10, 14, 14, 14, 14, 14],
    [12, 12, 12, 12, 12, 18, 18, 18, 18, 18],
    [14, 14, 14, 14, 14, 20, 20, 20, 20, 20] ]

    "Cast on #{stitch_count[swatch-3][chest/2 - 18]} stitches."
  end

  def seam1
    "Place a new marker at the center of these cast-on stitches to denote the
    right side 'seam.'"
  end

  def divide2(swatch, chest, pattern)
    if pattern == 1
      stitch_count = [ [48, 52, 54, 58, 60, 62, 64, 68, 70, 74],
      [64, 68, 72, 76, 80, 80, 84, 88, 92, 96],
      [80, 84, 90, 96, 100, 102, 106, 112, 116, 122],
      [96, 102, 108, 114, 120, 120, 126, 132, 138, 144],
      [112, 120, 126, 134, 140, 142, 148, 156, 162, 170] ]

      "Work across #{stitch_count[swatch-3][chest/2 - 18]} stitches for the back."
    else
      stitch_count = [ [48, 52, 54, 58, 60, 62, 64, 68, 70, 74],
      [64, 68, 72, 76, 80, 80, 84, 88, 92, 96],
      [80, 84, 90, 96, 100, 102, 106, 112, 116, 122],
      [96, 102, 108, 114, 120, 120, 126, 132, 138, 144],
      [112, 120, 126, 134, 140, 142, 148, 156, 162, 170] ]

      "Work #{stitch_count[swatch-3][chest/2 - 18]} stitches across the front."
    end
  end

  def waste_yarn2(swatch, chest)
    stitch_count = [ [34, 36, 38, 40, 42, 42, 44, 46, 48, 50],
    [44, 46, 50, 52, 54, 54, 56, 58, 62, 64],
    [56, 58, 62, 66, 68, 68, 72, 76, 78, 82],
    [66, 70, 74, 78, 82, 80, 84, 88, 92, 96],
    [78, 82, 86, 92, 96, 96, 100, 104, 108, 114] ]

    "Place #{stitch_count[swatch-3][chest/2 - 18]} stitches on stitch holder or
    waste yarn for the left sleeve."
  end

  def cast_on2(swatch, chest)
    stitch_count = [ [6, 6, 6, 6, 6, 8, 8, 8, 8, 8],
    [8, 8, 8, 8, 8, 12, 12, 12, 12, 12],
    [10, 10, 10, 10, 10, 14, 14, 14, 14, 14],
    [12, 12, 12, 12, 12, 18, 18, 18, 18, 18],
    [14, 14, 14, 14, 14, 20, 20, 20, 20, 20] ]

    "Cast on #{stitch_count[swatch-3][chest/2 - 18]} stitches."
  end

  def seam2
    "Place a new marker at the center of these cast-on stitches to denote the
    left side 'seam.'"
  end

  def divide3(swatch, chest)
    if pattern == 1
      stitch_count = [ [24, 26, 27, 29, 30, 31, 32, 34, 35, 37],
      [32, 34, 36, 38, 40, 40, 42, 44, 46, 48],
      [40, 42, 45, 48, 50, 51, 53, 56, 58, 61],
      [48, 51, 54, 57, 60, 60, 63, 66, 68, 72],
      [56, 60, 64, 67, 70, 71, 74, 78, 81, 85] ]

      "Work across #{stitch_count[swatch-3][chest/2 - 18]} stitches for the
      left front. "
    else
      ""
    end
  end

  def stitch_count7(swatch, chest)
    stitch_count = [ [108, 116, 120, 128, 132, 140, 144, 152, 156, 164],
    [144, 152, 160, 168, 176, 184, 192, 200, 208, 216],
    [180, 188, 200, 212, 220, 242, 240, 252, 260, 272],
    [216, 228, 240, 252, 264, 276, 288, 300, 312, 324],
    [252, 268, 280, ] ]

    "There will be #{stitch_count[swatch-3][chest/2 - 18]} stitches on the needle."
  end

  def front_back_count(swatch, chest, pattern)
    if pattern == 1
      stitch_count_front = [ [27, 29, 30, 32, 33, 35, 36, 38, 39, 41],
      [36, 38, 40, 42, 44, 46, 48, 59, 52, 54],
      [45, 47, 50, 53, 55, 58, 60, 63, 65, 68],
      [54, 57, 60, 64, 66, 69, 72, 75, 78, 81],
      [63, 67, 70, 74, 77, 81, 84, 88, 91, 95] ]

      stitch_count_back = [ [54, 58, 60, 64, 66, 70, 72, 76, 78, 82],
      [72, 76, 80, 84, 88, 92, 96, 100, 104, 108],
      [90, 94, 100, 106, 110, 116, 120, 126, 130, 136],
      [108, 114, 120, 126, 132, 138, 144, 150, 156, 162],
      [126, 134, 140, 148, 154, 162, 168, 176, 182, 190] ]

      "Each front will have #{stitch_count_front[swatch-3][chest/2 - 18]} stitches.
      The back will have #{stitch_count_back[swatch-3][chest/2 - 18]}."
    else
      stitch_count = [ [54, 58, 60, 64, 66, 70, 72, 76, 78, 82],
      [72, 76, 80, 84, 88, 92, 96, 100, 104, 108],
      [90, 94, 100, 106, 110, 116, 120, 126, 130, 136],
      [108, 114, 120, 126, 132, 138, 144, 150, 156, 162],
      [126, 134, 140, 148, 154, 162, 168, 176, 182, 190] ]

      "The front and back will each have #{stitch_count[swatch-3][chest/2 - 18]}
       stitches."
    end
  end

#Lower Body
  def lower_body1(chest)
    inches = [ 11, 10.75, 11, 11.75, 12.5, 12.75, 13, 13.25, 13.5, 13.75 ]

    "Work even until the body measures #{inches[chest/2 - 18]} inches in length
    from the dividing row."
  end

  def lower_body2
    "Adjust stitch count as neccessary to accomodate the edging of your choice,
     then work edging for 2.5 inches or desired length."
  end

  def lower_body3
    "Use flexible method to bind off all stitches."
  end

#Sleeves
  def sleeves1(swatch, chest)
    stitch_count =  [ [34, 36, 38, 40, 42, 42, 44, 46, 48, 50],
      [44, 46, 50, 52, 54, 54, 56, 58, 62, 64],
      [56, 58, 62, 66, 68, 68, 72, 76, 79, 82],
      [66, 70, 74, 78, 82, 80, 84, 88, 92, 96],
      [78, 82, 86, 92, 96, 96, 100, 104, 108, 114]
    ]
    "Place the #{stitch_count[swatch-3][chest/2 - 18]} stitches from the stitch
    holder onto needles."
  end

  def sleeves2(swatch, chest)
    stitch_count =  [ [6, 6, 6, 6, 6, 8, 8, 8, 8, 8],
      [8, 8, 8, 8, 8, 12, 12, 12, 12, 12],
      [10, 10, 10, 10, 10, 14, 14, 14, 14, 14],
      [12, 12, 12, 12, 12, 18, 18, 18, 18, 18],
      [14, 14, 14, 14, 14, 20, 20, 20, 20, 20]
    ]

    "Join yarn and pick up and knit #{stitch_count[swatch-3][chest/2 - 18]}
    stitches across the cast-on row at the base of the armhole. "
  end

  def sleeves3
    "Place marker at the center of the cast-on stitches to denote the end of
    round and join for working in rounds."
  end

  def sleeves4(swatch, chest)
    stitch_count =  [ [40, 42, 44, 46, 48, 50, 52, 54, 56, 58],
      [52, 54, 58, 60, 62, 66, 68, 70, 74, 76 ],
      [66, 68, 72, 76, 78, 82, 86, 90, 92, 96],
      [78, 82, 86, 90, 94, 98, 102, 106, 110, 114],
      [92, 96, 100, 106, 110, 116, 120, 124, 128, 134]
    ]

    "There will be #{stitch_count[swatch-3][chest/2 - 18]} stitches on the needle."
  end

  def sleeves5
    "Work even until sleeve measures about 1 inch from joining round."
  end

#Taper Sleeves
  def taper_sleeves1(swatch, chest)
    stitch_count = [ [6, 7, 7, 8, 9, 9, 8, 7, 8, 6],
    [7, 8, 9, 10, 11, 11, 10, 9, 7, 5],
    [10, 11, 11, 11, 11, 9, 5, 2, 6, 2],
    [11, 13, 13, 13, 9, 11, 7, 4, 2, 0],
    [13, 15, 15, 11, 8, 6, 3, 0, 1, 0] ]

    if stitch_count[swatch-3][chest/2 - 18] == 0
      ""
    else
      "Decrease 1 stitch each side of marker every 8th round
      #{stitch_count[swatch-3][chest/2 - 18]} times."
    end

  end

  def taper_sleeves2(swatch, chest)
    stitch_count = [ [0, 0, 0, 0, 0, 0, 2, 4, 3, 6],
    [0, 0, 0, 0, 0, 0, 2, 4, 7, 10],
    [0, 0, 0, 2, 3, 5, 11, 16, 11, 17],
    [0, 0, 0, 2, 8, 5, 11, 15, 19, 21],
    [0, 0, 0, 7, 12, 14, 19, 24, 23, 21] ]

    if stitch_count[swatch-3][chest/2 - 18] == 0
      ""
    else
    "Then decrease 1 stitch each side of marker every 6th round
    #{stitch_count[swatch-3][chest/2 - 18]} times."
    end
  end

  def taper_sleeves3(swatch, chest)
    stitch_count = [ [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 2],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 6] ]

    if stitch_count[swatch-3][chest/2 - 18] == 0
      ""
    else
      "Then decrease 1 stitch each side of marker every 4th round
      #{stitch_count[swatch-3][chest/2 - 18]} times."
    end
  end

  def taper_sleeves4(swatch, chest)
    stitch_count = [ [28, 28, 30, 30, 30, 32, 32, 32, 34, 34],
    [38, 38, 40, 40, 40, 44, 44, 44, 46, 46],
    [46, 46, 50, 50, 50, 54, 54, 54, 58, 58],
    [56, 56, 60, 60, 60, 66, 66, 66, 68, 68],
    [66, 66, 70, 70, 70, 76, 76, 76, 80, 80] ]

    "There will be #{stitch_count[swatch-3][chest/2 - 18]} stitches on the needle."
  end

  def taper_sleeves5(chest)
     inches = [14.25, 14.75, 15.25, 16, 16.5, 17.25, 17.75, 18, 18, 18.25]

    "Continue even if necessary until sleeve measures
    #{inches[chest/2 - 18]} from pick-up round."
  end

  def taper_sleeves6
    "Adjust stitch count as neccessary to accomodate the edging of your choice,
    then work edging for 2.5 inches or desired length."
  end

  def taper_sleeves7
    "Use flexible method to bind off all stitches."
  end
#Neckband
  def neckband1
    "Carefully remove any waste yarn from provisional cast on and place
    live stitches on needles."
  end

  def neckband2(pattern)
    if pattern == 2
      "Place marker and join for working in the round."
    else
      ""
    end
  end

  def neckband3
    "With RS facing, join yarn at right back neck at start of back stitches."
  end

  def neckband4
    "Begin two short rows: work to the left shoulder line, wrap the next stitch,
    turn. Work to right shoulder line, wrap the next stitch, turn. With RS
    facing, work to about 1 inch from previous wrapped stitch, wrap next stitch,
    turn. With WS facing, work to about 1 inch from previous wrapped stitch,
    wrap the next stitch, turn. Knit to end of row."
  end

  def neckband5
    "Work one row even, picking up wraps to incorporate."
  end

  def neckband6
    "Increase or decrease stitches as necessary to obtain correct multiple of
    stitches for chosen edging pattern. Work in edging pattern until neckband
    measures 3/4 inches."
  end

  def neckband7
    "Use flexible method to bind off all stitches."
  end

#Buttonband
  def buttonband1(pattern)
    if pattern == 1
    "With smaller needles and RS facing, pick up and knit about 3 stitches for
    every 4 rows along the center front edge. Adjust stitch count as necessary
    to achieve full multiple of chosen edging pattern. Work in pattern until
    band measures 1 inch. Bind off all stitches in pattern."
    end
  end

  def buttonband2(pattern)
    if pattern == 1
      "Mark placement of desired number of buttons, one 1/2 inch up from cast on
      edge and one at the base of neckband with the other spaced evenly between."
    end
  end

  def buttonband3(pattern)
    if pattern == 1
      "Work as for button band, working button holes opposite markers when band
      measures about 1/2 inch.  Bind off all stitches in pattern."
    end
  end

  def buttonband4(pattern)
    if pattern == 1
      "Weave in loose ends. Sew buttons to buttonband opposite button holes."
    end
  end

#Finishing
  def finishing
    "Weave in all loose ends. Block to desired measurements."
  end
end
