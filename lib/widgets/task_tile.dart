import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskTile extends StatefulWidget {
  final Task task;
  final ValueChanged<bool?> onChanged;
  final VoidCallback onDelete;

  const TaskTile({
    super.key,
    required this.task,
    required this.onChanged,
    required this.onDelete,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    if (widget.task.isCompleted) {
      _controller.value = 1.0;
    }
  }

  @override
  void didUpdateWidget(TaskTile oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.task.isCompleted != oldWidget.task.isCompleted) {
      if (widget.task.isCompleted) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Dismissible(
      key: Key(widget.task.title + widget.task.description),
      onDismissed: (_) => widget.onDelete(),
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: Colors.red.shade300,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(
          Icons.delete_outline_rounded,
          color: Colors.white,
          size: 28,
        ),
      ),
      direction: DismissDirection.endToStart,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: widget.task.isCompleted
              ? colorScheme.primaryContainer.withValues(alpha:0.4)
              : colorScheme.surface,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: colorScheme.shadow.withValues(alpha:0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          leading: InkWell(
            onTap: () => widget.onChanged(!widget.task.isCompleted),
            customBorder: const CircleBorder(),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: widget.task.isCompleted
                      ? colorScheme.primary
                      : colorScheme.outline,
                  width: 2,
                ),
                color: widget.task.isCompleted
                    ? colorScheme.primary
                    : Colors.transparent,
              ),
              padding: const EdgeInsets.all(2),
              width: 24,
              height: 24,
              child: AnimatedOpacity(
                opacity: widget.task.isCompleted ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 200),
                child: Icon(
                  Icons.check,
                  size: 16,
                  color: colorScheme.onPrimary,
                ),
              ),
            ),
          ),
          title: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            style: textTheme.bodyLarge!.copyWith(
              decoration: widget.task.isCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              color: widget.task.isCompleted
                  ? colorScheme.onSurface.withValues(alpha:0.7)
                  : colorScheme.onSurface,
              fontSize: 16,
              fontWeight: widget.task.isCompleted ? FontWeight.normal : FontWeight.w500,
            ),
            child: Text(widget.task.title),
          ),
          subtitle: widget.task.description.isNotEmpty
              ? AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 300),
                  style: textTheme.bodyMedium!.copyWith(
                    decoration: widget.task.isCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    color: widget.task.isCompleted
                        ? colorScheme.onSurface.withValues(alpha:0.5)
                        : colorScheme.onSurface.withValues(alpha:0.7),
                    fontSize: 14,
                  ),
                  child: Text(
                    widget.task.description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              : null,
          trailing: IconButton(
            icon: Icon(
              Icons.delete_outline_rounded,
              color: colorScheme.error.withValues(alpha:0.8),
              size: 22,
            ),
            splashRadius: 24,
            tooltip: 'Delete task',
            onPressed: widget.onDelete,
          ),
        ),
      ),
    );
  }
}
