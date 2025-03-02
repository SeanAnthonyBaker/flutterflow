// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/widgets/index.dart';
// Imports other custom widgets
import '/flutter_flow/custom_functions.dart';
// Imports custom functions

import 'dart:async'; // Import for Timer
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

class JsonTreeView extends StatefulWidget {
  const JsonTreeView({
    Key? key,
    this.width,
    this.height,
    required this.hierarchy,
  }) : super(key: key);

  final double? width;
  final double? height;
  final dynamic hierarchy;

  @override
  State<JsonTreeView> createState() => _JsonTreeViewState();
}

class _JsonTreeViewState extends State<JsonTreeView> {
  late final TreeController<MyNode> treeController;

  @override
  void initState() {
    super.initState();
    List<MyNode> roots = _buildNodes(widget.hierarchy);

    treeController = TreeController<MyNode>(
      roots: roots,
      childrenProvider: (MyNode node) => node.children,
    );
  }

  @override
  void dispose() {
    treeController.dispose();
    super.dispose();
  }

  List<MyNode> _buildNodes(dynamic jsonData) {
    if (jsonData is List) {
      return jsonData.map((item) => _createNode(item)).toList();
    } else if (jsonData is Map) {
      return [_createNode(jsonData)];
    } else {
      // Provide a nodeID here (e.g., -1 for invalid data)
      return [
        MyNode(title: 'Invalid JSON data: ${jsonData.toString()}', nodeID: -1)
      ];
    }
  }

  MyNode _createNode(dynamic nodeData) {
    if (nodeData is Map) {
      String title = nodeData['title'] ?? 'No Title';
      String text = nodeData['text'] ?? '';
      int nodeID = nodeData['nodeID']; // Get nodeID from data
      bool selected = nodeData['selected'] ?? false;
      List<MyNode> children = [];

      if (nodeData.containsKey('children') && nodeData['children'] is List) {
        children = _buildNodes(nodeData['children']);
      }

      return MyNode(
        title: title,
        children: children,
        content: text,
        isSelected: selected,
        nodeID: nodeID, // Add nodeID to MyNode
      );
    } else {
      // Provide a nodeID here (e.g., -2 for invalid node data)
      return MyNode(
          title: 'Invalid node data: ${nodeData.toString()}', nodeID: -2);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TreeView<MyNode>(
      treeController: treeController,
      nodeBuilder: (BuildContext context, TreeEntry<MyNode> entry) {
        return MyTreeTile(
          key: ValueKey(entry.node),
          entry: entry,
          treeController: treeController,
          onTap: () {
            if (entry.hasChildren) {
              setState(() {
                treeController.toggleExpansion(entry.node);
              });
            }
            setState(() {
              entry.node.updateSelected(!entry.node.isSelected);
            });
          },
        );
      },
    );
  }
}

class MyNode {
  MyNode({
    required this.title,
    this.children = const <MyNode>[],
    this.content,
    this.isSelected = false,
    required this.nodeID, // Add nodeID to MyNode
  });

  final String title;
  final List<MyNode> children;
  String? content;
  bool isSelected;
  final int nodeID; // Add nodeID to MyNode

  void updateSelected(bool newValue) {
    isSelected = newValue;
    for (var child in children) {
      child.updateSelected(newValue);
    }
  }
}

class MyTreeTile extends StatefulWidget {
  const MyTreeTile({
    super.key,
    required this.entry,
    required this.onTap,
    required this.treeController,
  });

  final TreeEntry<MyNode> entry;
  final VoidCallback onTap;
  final TreeController<MyNode> treeController;

  @override
  State<MyTreeTile> createState() => _MyTreeTileState();
}

class _MyTreeTileState extends State<MyTreeTile> {
  late final TextEditingController _controller;
  bool _isTextFieldVisible = false;
  Timer? _debounce;
  String _copiedText = "";

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.entry.node.content ?? "");
    _isTextFieldVisible = widget.entry.node.isSelected;
    _controller.addListener(_onTextChanged);
    _controller.addListener(_onSelectionChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(_onTextChanged);
    _controller.removeListener(_onSelectionChanged);
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      widget.entry.node.content = _controller.text;
    });
  }

  void _onSelectionChanged() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (_controller.selection.isValid &&
          _controller.selection.start != _controller.selection.end) {
        _copySelectedText();
      }
    });
  }

  void _copySelectedText() {
    String selectedText = _controller.text.substring(
      _controller.selection.start,
      _controller.selection.end,
    );

    // Update the app state variables
    FFAppState().update(() {
      FFAppState().clipBoard = selectedText;
      FFAppState().nodeText =
          widget.entry.node.content ?? ""; // Store full node text
      FFAppState().nodeID = widget.entry.node.nodeID; // Store node ID
    });

    Clipboard.setData(ClipboardData(text: selectedText));
    _copiedText = selectedText;
    _showToast();
  }

  void _showToast() {
    //   Fluttertoast.showToast(
    //     msg: 'Copied: $_copiedText',
    //     toastLength: Toast.LENGTH_LONG,
    //     gravity: ToastGravity.BOTTOM,
    //     backgroundColor: Colors.grey[800],
    //     textColor: Colors.white,
    //     fontSize: 16.0,
    //     timeInSecForIosWeb: 10,
    //   );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.entry.hasChildren) {
          setState(() {
            widget.treeController.toggleExpansion(widget.entry.node);
          });
        }
        setState(() {
          widget.entry.node.updateSelected(!widget.entry.node.isSelected);
          _isTextFieldVisible = widget.entry.node.isSelected;
        });
      },
      child: TreeIndentation(
        entry: widget.entry,
        guide: const IndentGuide.connectingLines(indent: 24, origin: 0.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: FolderButton(
                    isOpen: widget.entry.hasChildren
                        ? widget.entry.isExpanded
                        : null,
                    onPressed: widget.entry.hasChildren
                        ? () {
                            widget.treeController
                                .toggleExpansion(widget.entry.node);
                          }
                        : null,
                  ),
                ),
                Checkbox(
                  value: widget.entry.node.isSelected,
                  onChanged: (newValue) {
                    setState(() {
                      widget.entry.node.updateSelected(newValue!);
                      _isTextFieldVisible = newValue;
                    });
                  },
                ),
                Expanded(
                  child: Text(widget.entry.node.title),
                ),
              ],
            ),
            if (_isTextFieldVisible)
              Padding(
                padding: const EdgeInsets.only(left: 24.0 + 4.0, top: 4),
                child: TextField(
                  controller: _controller,
                  onChanged: (value) {
                    setState(() {
                      widget.entry.node.content = value;
                    });
                  },
                  maxLines: null,
                  expands: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(8),
                    hintText: "Enter Text",
                  ),
                ),
              ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
