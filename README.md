# IRI2020 Model Documentation

## English Version

### Introduction
The **IRI2020 (International Reference Ionosphere 2020)** model is an empirical standard model for ionospheric parameters. It provides electron density profiles and other ionospheric characteristics based on location, time, and altitude inputs.

**Key Features:**
- Calculates electron density (Ne/m³) profiles
- Supports altitude ranges from 60 km to 2000 km
- Accepts both datenum and datetime formats for time input
- Returns a structured output with comprehensive ionospheric data

### Usage Example

```matlab
% Clear workspace
clc; clear;

% Define input parameters
mydate = [2025 10 3 12 0 0];  % [year month day hour minute second]
latitude = 45;                % degrees
longitude = 120;              % degrees
altitude_range = 100:10:1000; % km (from 100 to 1000 km in 10 km steps)

% Call IRI2020 model
OutData = IRI2020(latitude, longitude, mydate, altitude_range);

% Plot electron density profile
figure;
plot(OutData.dens, OutData.alt, 'k-');
set(gca, 'XMinorTick', 'on', 'YMinorTick', 'on');
xlabel('Electron Density (Ne/m³)', 'fontsize', 8);
ylabel('Height (km)', 'fontsize', 8);
set(gca, 'fontsize', 8, 'fontname', 'times');
title(['UTC @ ', datestr(mydate)]);
```

## 中文版本

### 模型介绍
**IRI2020（国际参考电离层2020模型）** 是一个电离层参数的半经验标准模型，可根据地理位置、时间和高度范围计算电离层电子密度剖面和其他电离层特征。

**主要特点：**
- 计算电子密度（Ne/m³）剖面
- 支持60公里至2000公里的高度范围
- 接受datenum和datetime两种时间输入格式
- 返回包含完整电离层数据的结构体输出

### 使用方法示例

```matlab
% 清空工作区
clc; clear;

% 定义输入参数
mydate = [2025 10 3 12 0 0];  % [年 月 日 时 分 秒]
latitude = 45;                % 纬度（度）
longitude = 120;              % 经度（度）
altitude_range = 100:10:1000; % 高度范围（从100到1000公里，步长10公里）

% 调用IRI2020模型
OutData = IRI2020(latitude, longitude, mydate, altitude_range);

% 绘制电子密度剖面图
figure;
plot(OutData.dens, OutData.alt, 'k-');
set(gca, 'XMinorTick', 'on', 'YMinorTick', 'on');
xlabel('电子密度 (Ne/m³)', 'fontsize', 8);
ylabel('高度 (km)', 'fontsize', 8);
set(gca, 'fontsize', 8, 'fontname', 'times');
title(['UTC时间 @ ', datestr(mydate)]);
```

### 参数说明

| 参数 | 说明 | 范围 |
|------|------|------|
| latitude | 纬度 | -90° 到 90° |
| longitude | 经度 | -180° 到 180° |
| time | 时间 | MATLAB datenum 或 datetime 格式 |
| altitude | 高度 | 60 km 到 2000 km |

### 输出结构
```matlab
OutData = 
  struct with fields:
    latitude: 45          % 纬度
    longitude: 120        % 经度
    time: [datetime]      % 时间
    alt: [1×91 double]    % 高度数组
    dens: [1×91 double]   % 电子密度数组
    % 其他电离层参数...
```
