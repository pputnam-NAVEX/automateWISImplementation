﻿ # Philip Putnam
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
$main_form.Text ='GUI for Base WIS Implementation'
$main_form.Width = 600
$main_form.Height = 400

# To make the form automatically stretch, if the elements on the form are out of window bounds, use the AutoSize property.
$main_form.AutoSize = $true

# Create label for form field
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Choose Template"
$Label.Location = New-Object System.Drawing.Point(0,10)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

# Create drop down box for templates
$ComboBox = New-Object System.Windows.Forms.ComboBox
$ComboBox.Width = 300
$Templates = "Base Implementation Standard", "Base Implementation DP", "NAVEX Branded Standard", "NAVEX Branded DP"
Foreach ($Template in $Templates)
{

$ComboBox.Items.Add($Template)

}

$ComboBox.Location = New-Object System.Drawing.Point(60,30)

$main_form.Controls.Add($ComboBox)

# Now you can display the form on the screen. This opens a blank, gray Windows box.
$main_form.ShowDialog()