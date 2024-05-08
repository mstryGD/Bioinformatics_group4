# Bioinformatics_group4

Annelies Ehren (i6303351)
Roman Shchelkov (i6329330)
Daniil Verlan (i6324289)
The assignment encourages us to model a population relationship between 3 species, namely: plants, hares and lynx. The relationship between the populations of the latter is modelled in Matlab using a system of differential equations:

![image](https://github.com/mstryGD/Bioinformatics_group4/assets/169245920/2979533d-5738-4a51-b39c-1297b608168c)

 
Within the system, there are several parameters responsible for promoting or hindering the rates of change in the population model:

**a1**: Represents the proportionality coefficient of the effect of the number of plants on hare growth 

**b1**: Represents the carrying capacity of hares, given the maximum number of plants the system can generate 

**a2**: Represents the proportionality coefficient of the effect of the number of hares on lynx growth

**b2**: Represents the carrying capacity of lynx, given the maximum number of hares the system can generate

**d1**: Natural death rate of hares

**d2**: Natural death rate of lynx 

**t**: time in months (x-axis)

**y**: number of individuals (y-axis)


The assignment instructs us to adapt the model to 3 scenarios, namely when:

1: The system exhibits stable oscillations with a periodicity of approximately 70 months.

2: The lynx population goes extinct (population very close to zero) after a year, plants and hares stabilize within 120 months.

3: The system shows chaotic behaviour and the lynx population peaks twice within the 200-months period. 

**Scenario 1**:
The model exhibits periodic behaviour, with periodicity exhibited around every 70 months. The lynx population is much higher than the other 2, with increases in hare number occurring simultaneously with decreases in plants number, and vice versa.

**Scenario 2**:
The lynx population go extinct after 12 months, and the populations of hares and plants stabilize at around 40 months. Their population exhibit periodic fluctuations, such as the relationship in scenario 1.

**Scenario 3**:
Population changes occur irregularly, with no predictable pattern, making the system chaotic. There is some degree of periodicity present.

