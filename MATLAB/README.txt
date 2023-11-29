--> The "Codes" folder contains the MATLAB codes that were used during the
testing process for the self trigger algorithms. The "WireShark_Plotter.mlx"
file contains an algorithm that genererates a plot from a ".txt" file 
This ".txt" file must contain a HEX stream copied from the Wireshark 
packet files, in another format this code will not work.
The "CSV_2_WaveForms_Template_Generator.mlx" file contains a code that generates
a CSV file from an array given, this was used in order to export the template signal
from MATLAB to the WaveForms Digilent software, any signal can be used, but the code
must be modified accordingly.

--> The "Data" folder contains the data that was originally provided by Milano Bicocca
and contains almost 30000 events. This was used to generate the template for the Cross 
Correlation algorithm, the training for the Neural Network, and the Template signal 
for the WaveForms Software.

--> The "WaveForms" folder contains the saved workspace that was used in the WaveForms
software for the Analog Discovery 2 device, that included the template signal used in 
these tests.