import 'dart:io';
import 'dart:isolate';
import 'dart:math';
import 'dart:ui';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:formularios/data/sumary.dart';
import 'package:formularios/model/sumary_model.dart';
import 'package:formularios/pages/layout.dart';
import 'package:formularios/utils/data.dart';
import 'package:formularios/utils/dowloader.dart';
import 'package:formularios/widgets/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:path_provider/path_provider.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
import 'package:permission_handler/permission_handler.dart';

part 'home_page.dart';
part 'formulario_page.dart';
part 'view_form_page.dart';
part 'subtitles_list_page.dart';
