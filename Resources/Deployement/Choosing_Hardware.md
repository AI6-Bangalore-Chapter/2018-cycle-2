# Choosing hardware For Deep Learning
## Why GPU ?
#### 1. Parallelism 
Deep neural networks like AlexNet, GoogLeNet, ResNet run backpropagation over millions of parameters. It is a typical data parllel (massively threaded) operation which can be split across multiple compute cores. This is where a GPGPU comes into the picture. At the summerschool, we witnessed informed discussions on GPU and CPU architecture.

#### 2. Library support 
Alex Khrizevsky successfully demonstrated parallel implementation of a neural network on two graphics cards. Subsequently, GPUs quickly gained popularity among the deep learning research community. NVIDIA emerged as a leading vendor and most libraries supported CUDA architecture. Support for OpenCL and CPU based parallelism is improving, but currently CUDA remains de facto standard and NVIDIA GPUS are in much demand.

## What things to look for while selecting a GPU ?
Before proceeding further one should first study the available options on the vendor website and general information on wikipedia

#### 1. Server vs Desktop grade GPU ?
We need to make a choice between server grade GPUs (eg Tesla series) and desktop grade GPUs (eg GeForce GTX series).
  - Internal memory should be as large as possible to accomodate bigger neural network models.
  - Higher precision in floating point for neural networks is gennerally not required.
  - ECC memory feature memory feature might not be required.
  - Server grade GPUs generally expected to have more number of cores and slightly powerful cores.
  - Server grade GPUs are expensive as compared to desktop ones.

#### 2. Number of cores
Generally, more the number of cores, greater is the speedup due to paralleization in highly parallelizeable programs like deep neural networks.

#### 3. GPU internal memory
As the neural network models are getting larger and larger, more the GPU internal meory better it is.

#### 4. CPU Processor
Notes about Intel processors:

- Xeon vs i7 :
  - Xeon processor range starts from the upper end of i7 desktop processors. Xeons are server grade while i7 are high end desktop processors.
  - Xeons support larger RAMs (>64GB) which we typically need for recognition-mining-synthesis (RMS) workloads.
  - Xeons are more powerful and so they are more costly as compared to i7 


- Prefer a processor which supports AVX 2.0 instructions:
  - https://software.intel.com/en-us/articles/single-node-caffe-scoring-and-training-on-intel-xeon-e5-series-processors
  - https://github.com/soumith/convnet-benchmarks/issues/59

#### 5. CPU memory 
Data, models will be copied to and fro from CPU memory into / out of the GPU memory. So, CPU memory size should be preferabbly greater than the GPU mmemory size.

#### 6. SMPS
There should be no compromise on the SMPS. Graphics cards draw a lot of power, so powerful SMPS is a must.

#### 7. Number of users
Estimate of the number of active users and desired ratio of person to GPU will help in making informed decision.

#### 8. Budget
Most important factor is the budget. The best configuration that satisfies the budget requirements, rather than actual best configuration is what we are looking for.

## Example Large scale machine
- CVIT, IIIT-Hyderabad Configuration: CVIT GPU configuration (4 GPU machine) is based on NVIDIA dev box, (inputs from Facebook AI research, Oxford VGG and CCNSB group IIIT): https://developer.nvidia.com/devbox
- This is the configuration http://pcpartpicker.com/p/8VjR23 with the following three changes:
  - Motherboard: should be changed to "Asus X99-E WS" workstation class motherboard with 4-way PCI-E Gen3 x16 support.
  - RAM: DDR4 should be "2133 MHz" (same brand G.Skill Ripjaws V series)
  - SMPS: http://www.coolermaster.com/powersupply/silent-pro-m2/silent-pro-m2-1500w/

## Useful links:

- CPU: http://ark.intel.com/
- GPU: https://en.wikipedia.org/wiki/List_of_Nvidia_graphics_processing_units#GeForce_900_Series
- Power supply calculator: http://www.coolermaster.com/power-supply-calculator/
- Selecting compatible components: https://pcpartpicker.com/
- NVIDIA Maxwell architecture: https://developer.nvidia.com/maxwell-compute-architecture

Courtesy : CVIT, IIIT-Hyderabad.