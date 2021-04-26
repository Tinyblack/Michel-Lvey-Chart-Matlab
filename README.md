# Michel-Levy Birefringence Chart

This Matlab script generates the Michel-Levy Birefringence Chart of Nematic liquid crystal. The liquid crystal is analysed using crossed polarizer and analyser. The transmission intensity of the light under different wavelength is expressed as below:

![equation](http://www.sciweavers.org/tex2img.php?eq=T%3D%5Csin%5E%7B2%7D%7B%20%5Cleft%28%202%5Cchi%20%5Cright%29%7D%5Csin%5E%7B2%7D%7B%5Cleft%28%5Cfrac%7B%5Cpi%20%5CDelta%20n%20d%7D%7B%5Clambda_%7B0%7D%7D%5Cright%29%7D&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=0)

where

![test](http://www.sciweavers.org/tex2img.php?eq=%20%5Cchi%20&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=0) is the angle between the director of the liquid crystal molecule and the polarization of the light.

![d](http://www.sciweavers.org/tex2img.php?eq=d&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=0)is the distance between polarizer and analyzer (thickness).

![](http://www.sciweavers.org/tex2img.php?eq=%5Clambda_%7B0%7D&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=0)is the wavelength of the input light.

![](http://www.sciweavers.org/tex2img.php?eq=%5CDelta%20n%20%3D%20n_%7Be%7D-n_%7Bo%7D&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=0), where ![](http://www.sciweavers.org/tex2img.php?eq=n_%7Be%7D&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=0) is the refractive index parallel to the director of the liquid crystal and ![](http://www.sciweavers.org/tex2img.php?eq=n_%7Bo%7D&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=0) is the refractive index perpendicular to the director of the liquid crystal.

# The following MATLAB tool box is required to run the script.

To use function [rspd2xyz.m](https://viewer.mathworks.com/?viewer=plain_code&url=https%3A%2F%2Fuk.mathworks.com%2Fmatlabcentral%2Fmlc-downloads%2Fdownloads%2Fcfa61dca-a620-45f0-a01b-7e8a19bf5447%2Fde9ab213-8a1a-4525-9c07-d0ca37f4abe7%2Ffiles%2Ftbx%2Frspd2xyz.m&embed=web) in the tool box. This function converts a relative spectral power density
function to 1931 CIE XYZ tristimulus values [which has already been included in the tool box files. It can also be found [here](http://cvrl.ioo.ucl.ac.uk/cmfs.htm).

Thank the author for his contribution.

[![View MATLAB Color Tools on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/64161-matlab-color-tools) [MATLAB<sup>&reg;</sup> Color Tools](https://www.mathworks.com/matlabcentral/fileexchange/64161-matlab-color-tools)

This the result of the chart. [.fig file is also included in this repository]![image](Michel_Levy_Birefringence_Chart.jpg)
