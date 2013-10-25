# Remove state data files
rm -rf state_cpt-*

# Get current date and time
time_stamp=$(date +%d-%m-%Y_%H-%M)

# Make a folder for run data files
folder="$time_stamp-run"
mkdir -p $folder

# Move all data from run to this folder
mv system.lammpstrj $folder/
mv traj-0.xtc $folder/
mv msd.xvg $folder/
mv rdf.xvg $folder/

# Copy plot scrips for convienience
cp plot_rdf.gnu $folder/
cp plot_msd.gnu $folder/

