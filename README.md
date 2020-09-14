# Synthstrom Deluge in Pharo

Aims to support creation of objects that represent Synthstrom's Deluge instruments.

## Installing

```smalltalk
Metacello new 
  baseline: 'SynthstromDeluge'; 
  repository: 'github://grype/Pharo-SynthstromDeluge'; 
  load.
```

## Summary

It is possible to read and write Deluge's XML files, though only Kits are supported at the moment. Most of the code was generated, so it's possible to create additional structs, like synths and songs. This isn't too straight-forward, so see notes on **Generating source code**. 

It isn't exactly clear how to create the right components of an instrument - i.e. Which DefaultParams to use, whicih default values to use, etc. So, it's always best to start with something that the device had created.

A note on class structure and naming:

All Deluge objects are subclasses of `DelugeObject`. Classes that represent files are suffixed with `Container`. So, you will have `DelugeKitContainer` represent contents of a e.g. KIT0001.XML, one of the children of that container will be the actual `DelugeKit` object.

## Working with files

```smalltalk
kit := DelugeSynthContainer fromFile: '/Volumes/NO NAME/KITS/MYKIT.XML' asFileReference.
...
kit toFile: '/Volumes/NO NAME/KITS/MYKIT 2.XML' asFileReference.
```

## Creating kits from AKAI PGM files

Be sure to load the 'Akai' configuration:

```smalltalk
Metacello new 
  baseline: 'SynthstromDeluge'; 
  repository: 'github://grype/Pharo-SynthstromDeluge'; 
  load: 'Akai'.
```

Then,

```smalltalk
pgm := '/path/to/AKAI/ALIEN_DRUMS/ALIEN_DRUMS1.PGM' asFile.
kit := DelugeKitContainer fromAkaiProgramFile: pgm.
kit exportTo: '/Volumes/NO NAME/KITS' copyingSamplesFrom: pgm parent.
```

Note: the above assumes that samples and PGM files all live in the same directory. If that's not the case - adjust the argument to `copyingSampleFrom:`...

## Generating source code

The source code represents the XML structure, in which Deluge stores instrument descriptions. For the most part, the source code was generated, making small additions here and there wherever object construction had to be tweaked (which is mostly in the `intialize` methods).

To (re-)generate the source code you need an XML file from which to model classes. Then,

```smalltalk
file := '/Volumes/NO NAME/KITS/KIT0001.XML' asFileReference.
DelugeObject generateClassesFromFile: file containerNodeName: DelugeKitContainer xmlElementName.
```

If you're generating a new type of object, say a synth:

```smalltalk
DelugeObject generateClassesFromFile: files first containerNodeName: 'synthContainer'.
```

Notice that the `containerNodeName` argument will determine the class name - we're not actually looking for a tag with that name.

The above snippet will essentially read the XML file, create classes for XML tags (i.e. <kit> translates to DelugeKit), capturing its properties and children, and create necessary magritte description methods to facilitate serialization.
  
It is also possible to scan those XML files for string values and capture them into configuring methods:

```smalltalk
objects := fileReferences collect: [ :each | 
	DelugeObject generateClassesFromFile: each containerNodeName: 'kitContainer'.
	(Smalltalk at: #DelugeKitContainer) fromFile: each.
	].
DelugeObject generateConstantsAccessorsFromReferences: (objects flatCollect: #allReferencedConstants).
```

That will prompt to create various methods that configure properties of an object using found strings - i.e. `beLpfMode24dB'...

**Note** XML structure varries b/w instruments (kits, synths, songs) - Some finessing will be required when generating new classes. Be sure not to break existing class definitions, methods, especially those with magritte descriptions. In fact, when introducing a new model, it may require tweaking the magritte description files and initialization methods for some classes. In the latter case, follow DelugeKit>>#initialize. It's always best to leave classes that represent inner nodes w/o customized initialization, and configure their instances from the initialization of parent of container node's class (i.e. DelugeKit>>#initialize creates and configures DelugeDefaultParams instance.
