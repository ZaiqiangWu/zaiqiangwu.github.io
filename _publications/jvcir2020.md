---
title: "Analytical derivatives for differentiable renderer: 3D pose estimation by silhouette consistency"
collection: publications
category: journals
permalink: /publication/jvcir2020
excerpt: ''
date: 2020-11-01
venue: 'Journal of Visual Communication and Image Representation'
#slidesurl: 'http://academicpages.github.io/files/slides2.pdf'
paperurl: 'https://www.sciencedirect.com/science/article/abs/pii/S1047320320301851'
citation: '<b>Zaiqiang Wu</b>, Wei Jiang, Hongyan Yu. <i>Journal of Visual Communication and Image Representation</i>. 2020.'
---

Differentiable renderer is widely used in optimization-based 3D reconstruction which requires gradients for optimization. The existing differentiable renderers obtain gradients via numerical techniques. However, these methods are inaccurate and inefficient. Motivated by this fact, we propose a differentiable renderer with analytical gradients. The main obstacle of traditional renderer being differentiable is the discrete sampling operation of rasterization. To obtain a differentiable rasterization renderer, we define pixel intensity as a double integral over the pixel grid, and then derive the analytical gradients with respect to vertices. 3D pose estimation by multi-viewpoint silhouettes is conducted to reveal the effectiveness and efficiency of the proposed method. Experimental results show that 3D pose estimation without 3D and 2D joint supervision can produce competitive results. The findings also indicate that the proposed method has higher accuracy and efficiency than previous differentiable renderers.