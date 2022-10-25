import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xdynamite/domain/files/fileNode.dart';
import 'package:xdynamite/ui/side_panel/widgets/file_widget.dart';

class FileList extends StatelessWidget {
  final List<FileNode> fileNodes;

  const FileList(this.fileNodes, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tree(
      fileNodes,
      isInitial: true,
    );
  }
}

class Tree extends StatelessWidget {
  final List<FileNode> fileNodes;
  bool isInitial;
  Tree(this.fileNodes, {Key? key, this.isInitial = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isInitial) {
      return ListView.builder(
          shrinkWrap: true,
          itemCount: fileNodes.length,
          itemBuilder: (ctx, index) {
            return TreeNode(fileNodes[index]);
          });
    }

    return Column(
      children: fileNodes.map((e) => TreeNode(e)).toList(),
    );
  }
}

class TreeNode extends StatefulWidget {
  final FileNode node;
  const TreeNode(this.node, {Key? key}) : super(key: key);

  @override
  State<TreeNode> createState() => _TreeNodeState();
}

class _TreeNodeState extends State<TreeNode> {
  bool collapsed = false;
  @override
  List<Widget> getColumnChildren() {
    if (collapsed) {
      return [
        FileWidget(
            name: widget.node.name,
            path: widget.node.path,
            isDirectory: widget.node.isDirectory,
            collapsed: collapsed,
            setCollapsed: () {
              setState(() {
                collapsed = !collapsed;
              });
            }),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Tree(
            widget.node.children,
            isInitial: false,
          ),
        ),
      ];
    }
    return [
      FileWidget(
          name: widget.node.name,
          path: widget.node.path,
          isDirectory: widget.node.isDirectory,
          collapsed: collapsed,
          setCollapsed: () {
            setState(() {
              collapsed = !collapsed;
            });
          }),
    ];
  }

  Widget build(BuildContext context) {
    return Column(
      children: getColumnChildren(),
    );
  }
}
