# This message contains tracking parameters.
#
# These parameters determine how precise, how fast and how
# reliable will be the tracking.
#
# It should be tuned carefully and can be changed dynamically.
#
# For more details, see the ViSP documentation:
# http://www.irisa.fr/lagadic/visp/publication.html


# Moving edge parameters.

int64 mask_size    # Mask size (in pixel) used to compute the image gradient
                   # and determine the object contour.
		   # A larger mask size is better for larger images.
		   # 3 pixels is enough for 640x480 images.
                   # Increasing this value makes the tracking slower.
		   #
		   # Caution: this value cannot be changed dynamically
		   # without resetting the tracking.

int64 range        # Maximum seek distance on both sides of the reference pixel.
      		   # It should match the maximum distance in pixel between
		   # the current position of the feature projection and
		   # its next position.
		   # I.e. if the object moves fast and your tracking
		   # frequency is low, this value should be increased.
                   # Increasing this value makes the tracking slower.

float64 threshold  # Value used to determine if a moving edge is valid
		   # or not.

float64 mu1        # Minimum image contrast allowed to detect a contour.
float64 mu2        # Maximum image contrast allowed to detect a contour.

int64 sample_step   # Minimum distance in pixel between two
      		    # discretization points.
      		    # It avoids having too many discretization points when
		    # the tracked object is far away (and its projection
		    # in the image is small).
		    # Increasing this value makes the tracking *faster*.

int64 strip             # How many pixels are ignored around the borders.


# Tracker parameters.

float64 first_threshold # What proportion of points should be valid to
                        # acccept an initial pose.
			# Value should be between 0 et 1.

