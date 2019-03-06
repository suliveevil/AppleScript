-- Chapter 22

--set this_file to choose file without invisibles
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- extract the property value
--		copy the resolution of this_image to {H_res, V_res}
--		-- purge the open image data
--		close this_image
--	end tell
--	display dialog "Resolution: " & (H_res as string)
--on error error_message
--	display dialog error_message
--end try

--
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- extract the properties record
--		set the props_rec to the properties of this_image
--		-- purge the open image data
--		close this_image
--		-- extract the property values from the record
--		set the image_info to ""
--		set the image_info to the image_info & ¬
--			"Name: " & (name of props_rec) & return
--		set the image_info to the image_info & ¬
--			"File: " & (path of image file of props_rec) & return
--		set the image_info to the image_info & ¬
--			"Location: " & (path of location of props_rec) & return
--		set the image_info to the image_info & ¬
--			"File Type: " & (file type of props_rec) & return
--		set the image_info to the image_info & ¬
--			"Bit Depth: " & (bit depth of props_rec) & return
--		set the image_info to the image_info & ¬
--			"Res: " & item 1 of (resolution of props_rec) & return
--		set the image_info to the image_info & ¬
--			"Color Space: " & (color space of props_rec) & return
--		copy (dimensions of props_rec) to {X, Y}
--		set the image_info to the image_info & ¬
--			"Dimemsions: " & X & ", " & Y
--	end tell
--	display dialog image_info
--on error error_message
--	display dialog error_message
--end try


-- POSIX path of image file of props_rec

--
--set this_file to choose file without invisibles
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- perform the manipulation
--		flip this_image with horizontal
--		-- save the changes
--		save this_image with icon
--		-- purge the open image data
--		close this_image
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- perform action
--		rotate this_image to angle 270
--		-- save the changes
--		save this_image with icon
--		-- purge the open image data
--		close this_image
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- perform action
--		scale this_image by factor 0.5
--		-- save the changes
--		save this_image with icon
--		-- purge the open image data
--		close this_image
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
--set the target_length to 128
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- perform action
--		scale this_image to size target_length
--		-- save the changes
--		save this_image with icon
--		-- purge the open image data
--		close this_image
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
--set the target_length to 128
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- get dimensions of the image
--		copy dimensions of this_image to {W, H}
--		-- determine the shortest side and then
--		-- calculate the new length for the longer side
--		if W is less than H then
--			set the scale_length to (H * target_length) / W
--			set the scale_length to ¬
--				round scale_length rounding as taught in school
--		else
--			set the scale_length to (W * target_length) / H
--			set the scale_length to ¬
--				round scale_length rounding as taught in school
--		end if
--		-- perform action
--		scale this_image to size scale_length
--		-- save the changes
--		save this_image with icon
--		-- purge the open image data
--		close this_image
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- perform action
--		pad this_image to dimensions {640, 480}
--		-- save the changes
--		save this_image with icon
--		-- purge the open image data
--		close this_image
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
---- indicate the proportions for the pad area
--set H_proportion to 16
--set V_proportion to 9
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- get dimensions of the image
--		copy dimensions of this_image to {W, H}
--		-- calculate pad dimensions
--		if H_proportion is greater than V_proportion then
--			set the new_W to (H * H_proportion) / V_proportion
--			set pad_dimensions to {new_W, H}
--		else
--			set the new_H to (W * V_proportion) / H_proportion
--			set pad_dimensions to {W, new_H}
--		end if
--		-- perform action
--		pad this_image to dimensions pad_dimensions
--		-- save the changes
--		save this_image with icon
--		-- purge the open image data
--		close this_image
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
---- indicate the final dimensions for the padded image
--set target_W to 960
--set target_H to 540
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- get dimensions of the image
--		copy dimensions of this_image to {W, H}
--		-- calculate pad dimensions
--		if target_W is greater than target_H then
--			set the new_W to (H * target_W) / target_H
--			set pad_dimensions to {new_W, H}
--			set the scale_dimension to target_W
--		else
--			set the new_H to (W * target_H) / target_W
--			set pad_dimensions to {W, new_H}
--			set the scale_dimension to target_H
--		end if
--		-- perform action
--		pad this_image to dimensions pad_dimensions
--		-- save the changes
--		save this_image with icon
--		-- perform action
--		scale this_image to size scale_dimension
--		-- save the changes
--		save this_image with icon
--		-- purge the open image data
--		close this_image
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
---- indicate the final dimensions for the padded image
--set target_W to 960
--set target_H to 540
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- get dimensions of the image
--		copy dimensions of this_image to {W, H}
--		-- calculate scaling
--		if target_W is greater than target_H then
--			if W is greater than H then
--				set the scale_length to (W * target_H) / H
--				set the scale_length to ¬
--					round scale_length rounding as taught in school
--			else
--				set the scale_length to target_H
--			end if
--		else if target_H is greater than target_W then
--			if H is greater than W then
--				set the scale_length to (H * target_W) / W
--				set the scale_length to ¬
--					round scale_length rounding as taught in school
--			else
--				set the scale_length to target_W
--			end if
--		else -- square pad area
--			set the scale_length to target_H
--		end if
--		-- perform action
--		scale this_image to size scale_length
--		-- perform action
--		pad this_image to dimensions {target_W, target_H}
--		-- save the changes
--		save this_image with icon
--		-- purge the open image data
--		close this_image
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
--set the frame_TH to 12
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- get dimensions of the image
--		copy dimensions of this_image to {W, H}
--		-- perform action
--		pad this_image ¬
--			to dimensions {W + frame_TH, H + frame_TH}
--		-- save the changes
--		save this_image with icon
--		-- purge the open image data
--		close this_image
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
--set the TH_factor to 0.05 -- 5%
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- get dimensions of the image
--		copy dimensions of this_image to {W, H}
--		-- determine the length of the hypotenuse
--		set the HY_length to ((W ^ 2) + (H ^ 2)) ^ 0.5
--		-- determine the frame thickness
--		set frame_TH to HY_length * TH_factor
--		-- perform action
--		pad this_image ¬
--			to dimensions {W + frame_TH, H + frame_TH}
--		-- save the changes
--		save this_image with icon
--		-- purge the open image data
--		close this_image
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
--set the crop_W to 640
--set the crop_H to 480
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- perform action
--		crop this_image to dimensions {crop_W, crop_H}
--		-- save the changes
--		save this_image with icon
--		-- purge the open image data
--		close this_image
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
--set the vertical_crop to 24
--set the horizontal_crop to 48
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- get dimensions of the image
--		copy dimensions of this_image to {W, H}
--		-- perform action
--		crop this_image ¬
--			to dimensions {W - horizontal_crop, H - vertical_crop}
--		-- save the changes
--		save this_image with icon
--		-- purge the open image data
--		close this_image
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
--set the vertical_crop to 0
--set the horizontal_crop to 0.32 -- 32%
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- get dimensions of the image
--		copy dimensions of this_image to {W, H}
--		-- perform action
--		crop this_image to dimensions ¬
--			{W - (W * horizontal_crop), H - (H * vertical_crop)}
--		-- save the changes
--		save this_image with icon
--		-- purge the open image data
--		close this_image
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- get dimensions of the image
--		copy dimensions of this_image to {W, H}
--		-- determine the letterbox area
--		set crop_W to W
--		-- calcluate the 16:9 proportions
--		set crop_H to (W * 9) / 16
--		-- perform action
--		crop this_image to dimensions {crop_W, crop_H}
--		-- save the changes
--		save this_image with icon
--		-- purge the open image data
--		close this_image
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
--set the target_file to (choose file name default name "newimage.tif")
---- convert file reference in alias format to path string
--set the target_path to the target_file as Unicode text
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- save in new file
--		save this_image as TIFF in target_path with icon
--		-- purge the open image data
--		close this_image
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		set the new_format to TIFF
--		set the nme_ext to "tif"
--		-- derive new name for the new image file
--		copy my derive_filename(this_file, nme_ext, "-", "") ¬
--			to {new_name, target_HFSpath}
--		-- open the image file
--		set this_image to open this_file
--		-- save in new file. The result is a file ref to the new file
--		set the new_image to save this_image ¬
--			as new_format in file target_HFSpath with icon
--		-- purge the open image data
--		close this_image
--	end tell
--	tell application "Finder"
--		-- delete the original file
--		delete this_file
--	end tell
--on error error_message
--	display dialog error_message
--end try
--on derive_filename(this_item, new_extension, increment_separator, target_folder)
--	-- A sub-routine used for deriving the name and path of a new file using the name of an existing file
--	-- Pass in file ref in alias format, the new name extension, an increment separator, and any target directory (in alias format)
--	-- Name and HFS path for new file are returned. The name is incremented if a file exists in the target location.
--	-- Pass a null string for the target directory to use the item's parent directory
--	-- Pass a null string for the new name extension to use the item's current name extension
--	tell application "Finder"
--		if target_folder is "" then
--			set the target_folder to ¬
--				the container of this_item
--		end if
--		set the file_name to the name of this_item
--		set file_extension to the name extension of this_item
--		if the file_extension is "" then
--			set the trimmed_name to the file_name
--			set extension_separator to ""
--		else
--			set the trimmed_name to ¬
--				text 1 thru -((length of file_extension) + 2) ¬
--					of the file_name
--			set extension_separator to "."
--		end if
--		if the new_extension is "" then
--			set target_name to file_name
--			set target_extension to file_extension
--		else
--			set target_extension to new_extension
--			set target_name to ¬
--				(the trimmed_name & extension_separator & ¬
--					target_extension) as Unicode text
--		end if
--		if (exists document file target_name ¬
--			of target_folder) then
--			set the name_increment to 1
--			repeat
--				set the new_name to ¬
--					(the trimmed_name & increment_separator & ¬
--						(name_increment as Unicode text) & ¬
--						extension_separator & ¬
--						target_extension) as Unicode text
--				if not (exists document file new_name ¬
--					of the target_folder) then
--					set the target_HFSpath to ¬
--						((target_folder as Unicode text) & ¬
--							new_name)
--					return {new_name, target_HFSpath}
--				else
--					set the name_increment to ¬
--						the name_increment + 1
--				end if
--			end repeat
--		else
--			set the target_HFSpath to ¬
--				((target_folder as Unicode text) & target_name)
--			return {target_name, target_HFSpath}
--		end if
--	end tell
--end derive_filename

--
--set this_file to choose file without invisibles
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		set the new_format to PNG
--		set the nme_ext to "png"
--		set the thumb_size to 128
--		-- derive new name for the new image file
--		copy my derive_filename(this_file, nme_ext, "-", "") ¬
--			to {new_name, target_HFSpath}
--		-- open the image file
--		set this_image to open this_file
--		-- scale to thumnail size
--		scale this_image to size thumb_size
--		-- save in new file. The result is a file ref to the new file
--		set the new_image to save this_image ¬
--			as new_format in file target_HFSpath with icon
--		-- purge the open image data
--		close this_image
--	end tell
--	tell application "Finder"
--		-- delete the original file
--		delete this_file
--	end tell
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- extract the metadata values
--		tell this_image
--			repeat with i from 1 to the count of metadata tags
--				try
--					set this_tag to metadata tag i
--					set the tag_name to the name of this_tag
--					set the tag_value to the value of this_tag
--					if i is 1 then
--						set the tag_text to ¬
--							tag_name & ": " & tag_value
--					else
--						set the tag_text to the tag_text & ¬
--							return & tag_name & ": " & tag_value
--					end if
--				on error
--					if the tag_name is "profile" then
--						set the tag_text to the tag_text & ¬
--							return & tag_name & ": " & ¬
--							name of tag_value
--					end if
--				end try
--				
--			end repeat
--		end tell
--		-- purge the open image data
--		close this_image
--	end tell
--	display dialog tag_text
--on error error_message
--	display dialog error_message
--end try

--
--set this_file to choose file without invisibles
--try
--	tell application "Image Events"
--		-- start the Image Events application
--		launch
--		-- open the image file
--		set this_image to open this_file
--		-- extract the value for the metadata tag
--		tell this_image
--			set the camera_type to ¬
--				the value of metadata tag "model"
--		end tell
--		-- purge the open image data
--		close this_image
--	end tell
--	display dialog camera_type
--on error error_message
--	display dialog error_message
--end try


-- Chapter 23

--
--tell application "Database Events"
--	get every database
--end tell

--
--tell application "Database Events"
--	set quit delay to 0 -- run indefinitely
--	if not (database "Movie Collection" exists) then
--		if not (exists database ¬
--			(POSIX path of (path to documents folder) ¬
--				& "Databases/Movie Collection.dbev")) then
--			make new database ¬
--				with properties {name:"Movie Collection"}
--			save result
--		end if
--	end if
--end tell

--
--tell application "Database Events"
--	tell database "Movie Collection"
--		make new record ¬
--			with properties {name:"The Man Who Fell to Earth"}
--		save
--	end tell
--end tell

--
--tell application "Database Events"
--	tell database "Movie Collection"
--		get properties of field 1 of record 1
--	end tell
--end tell

--
--tell application "Database Events"
--	tell database "Movie Collection"
--		tell record "The Man Who Fell to Earth"
--			make new field with properties ¬
--				{name:"actor", value:"David Bowie"}
--			make new field with properties ¬
--				{name:"actor", value:"Rip Torn"}
--			make new field with properties ¬
--				{name:"actor", value:"Candy Clark"}
--			make new field with properties ¬
--				{name:"actor", value:"Buck Henry"}
--		end tell
--		save
--	end tell
--end tell

--
--tell application "Database Events"
--	tell database "Movie Collection"
--		tell record "The Man Who Fell to Earth"
--			make new field with properties ¬
--				{name:"director", value:"Nicolas Roeg"}
--		end tell
--		make new record ¬
--			with properties {name:"Blade Runner"}
--		tell record "Blade Runner"
--			make new field with properties ¬
--				{name:"actor", value:"Harrison Ford"}
--			make new field with properties ¬
--				{name:"actor", value:"Daryl Hannah"}
--			make new field with properties ¬
--				{name:"director", value:"Ridley Scott"}
--		end tell
--		make new record ¬
--			with properties {name:"Alien"}
--		tell record "Alien"
--			make new field with properties ¬
--				{name:"actor", value:"Sigourney Weaver"}
--			make new field with properties ¬
--				{name:"director", value:"Ridley Scott"}
--		end tell
--		save
--	end tell
--end tell


-- Chapter 24

--
--say "Hello."
--delay 1
--say "What is your name?"

--
--tell application "Safari"
--	set the URL of the front document to "http://www.apple.com/cn/"
--	set this_data to the text of document 1
--end tell

--
--tell application "Safari"
--	set the URL of the front document to "http://www.cnn.com/"
--	delay 1 -- let the page begin to load before checking
--	repeat
--		-- use Safari's 'do JavaScript' to check a page's status
--		if (do JavaScript "document.readyState" in document 1) ¬
--			is "complete" then exit repeat
--		delay 1 -- wait a second before checking again
--	end repeat
--	beep
--	set this_data to the text of document 1
--end tell

--













-- Chapter 25

--



