# Synthstrom Deluge in Pharo

Aims to support creation of Deluge structures. At the moment it is possible to read in and write out XML files for kits.

## Installing

```smalltalk
Metacello new 
  baseline: 'SynthstromDeluge'; 
  repository: 'github://grype/Pharo-SynthstromDeluge'; 
  load.
```

## Working with files

```smalltalk
kit := DelugeSynthContainer fromFile: '/Volumes/NO NAME/KITS/MYKIT.XML' asFileReference.
...
kit toFile: '/Volumes/NO NAME/KITS/MYKIT 2.XML' asFileReference.
```

Creating kits from AKAI PGM files:

```smalltalk
kit := DelugeKitContainer fromAkaiProgramFile: '/path/to/AKAI/ALIEN_DRUMS/ALIEN_DRUMS1.PGM' asFile.
kit exportTo: '/Volumes/NO NAME/KITS' copyingSamplesFrom: each parent.
```
Note: the above assumes that samples and PGM files all live in the same directory. If that's not the case - adjust the argument to `copyingSampleFrom:`...
