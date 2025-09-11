---
title: "Virtual Measurement Garment for Per-Garment Virtual Try-On"
collection: publications
category: conferences
permalink: /publication/2024-06-03-paper-title-number-1
excerpt: 'This paper is about per-garment virtual try-on without a measurement garment.'
date: 2024-06-03
venue: 'Graphics Interface'
#slidesurl: 'http://academicpages.github.io/files/slides1.pdf'
paperurl: 'http://zaiqiangwu.github.io/files/vm.pdf'
#bibtexurl: 'http://academicpages.github.io/files/bibtex1.bib'
citation: '<b>Zaiqiang Wu<sup>*</sup></b>, Jingyuan Liu<sup>*</sup>  (equal contribution), Toby Chong, I-Chao Shen, Takeo Igarashi. <i>Proceedings of the 50th Graphics Interface Conference
</i>. <b>Graphic Interface 2024</b>.'
---
The popularity of virtual try-on methods has increased in recent years as they allow users to preview the appearance of garments on themselves without physically wearing them. However, existing image-based methods for general virtual try-on provide limited support to synthesize realistic and consistent garment images under different poses, due to two main difficulties: 1) the dataset used to train these methods contains a vast collection of garments, but they lack fine details of each garment; 2) they synthesize results by warping the front-view image of the target garment in a rest pose, which results in poor quality and detail for other viewpoints and poses. To overcome these drawbacks, per-garment virtual try-on methods train garment-specific networks that can produce high-quality results with fine-grained details for a particular target garment. However, existing per-garment virtual try-on methods require the use of a physical measurement garment, which limits their applicability. In this paper, we propose a novel per-garment virtual try-on method that leverages a virtual measurement garment, which eliminates the need for the physical measurement garment, to guide the synthesis of high-quality and temporally consistent garment images under various poses. Furthermore, we introduce a gap-filling module that effectively fills the gap between the synthesized garment and body parts. We conduct qualitative and quantitative evaluations against a state-of-the-art image-based virtual try-on method and ablation studies to demonstrate that our method achieves superior performance in terms of realism and consistency of the generated garment images.