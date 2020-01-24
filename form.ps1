﻿# Philip Putnam
# 01/23/2020
# Testing with forms
# Resources: 
# https://theitbros.com/powershell-gui-for-scripts/ <- This resource basically explains every below step,
# comments below are at time copied directly from this site

# we use the class System.Windows.Forms. To load this class into a PowerShell session, you can use the following code:
Add-Type -assembly System.Windows.Forms

# Now create the screen form (window) to contain elements:
$main_form = New-Object System.Windows.Forms.Form

# Set the title and size of the window:
$main_form.Text ='GUI for my PoSh script'
$main_form.Width = 600
$main_form.Height = 400

# To make the form automatically stretch, if the elements on the form are out of window bounds, use the AutoSize property.
$main_form.AutoSize = $true

# Now you can display the form on the screen. This opens a blank, gray Windows box.
$main_form.ShowDialog()