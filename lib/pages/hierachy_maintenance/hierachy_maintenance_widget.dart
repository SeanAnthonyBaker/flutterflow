import '/backend/supabase/supabase.dart';
import '/components/display_tree_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'hierachy_maintenance_model.dart';
export 'hierachy_maintenance_model.dart';

class HierachyMaintenanceWidget extends StatefulWidget {
  const HierachyMaintenanceWidget({super.key});

  static String routeName = 'hierachyMaintenance';
  static String routePath = '/hierachyMaintenance';

  @override
  State<HierachyMaintenanceWidget> createState() =>
      _HierachyMaintenanceWidgetState();
}

class _HierachyMaintenanceWidgetState extends State<HierachyMaintenanceWidget> {
  late HierachyMaintenanceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HierachyMaintenanceModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 8.0,
            buttonSize: 40.0,
            fillColor: FlutterFlowTheme.of(context).primary,
            icon: Icon(
              Icons.arrow_back,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
            onPressed: () async {
              context.pushNamed(HomePageWidget.routeName);
            },
          ),
          title: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Manage Hierachy',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    font: GoogleFonts.interTight(
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                    ),
                    color: FlutterFlowTheme.of(context).alternate,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                  maxHeight: MediaQuery.sizeOf(context).height * 1.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primaryText,
                    width: 5.0,
                  ),
                ),
                child: Draggable<String>(
                  data: '',
                  feedback: Material(
                    type: MaterialType.transparency,
                    child: FutureBuilder<List<DocumentsRow>>(
                      future: DocumentsTable().queryRows(
                        queryFn: (q) => q.eqOrNull(
                          'type',
                          'DataStructure',
                        ),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<DocumentsRow> listViewDocumentsRowList =
                            snapshot.data!;

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewDocumentsRowList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewDocumentsRow =
                                listViewDocumentsRowList[listViewIndex];
                            return wrapWithModel(
                              model: _model.displayTreeModels.getModel(
                                listViewDocumentsRow.nodeID.toString(),
                                listViewIndex,
                              ),
                              updateCallback: () => safeSetState(() {}),
                              child: DisplayTreeWidget(
                                key: Key(
                                  'Keyyla_${listViewDocumentsRow.nodeID.toString()}',
                                ),
                                node: listViewDocumentsRow,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  child: FutureBuilder<List<DocumentsRow>>(
                    future: DocumentsTable().queryRows(
                      queryFn: (q) => q.eqOrNull(
                        'type',
                        'DataStructure',
                      ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<DocumentsRow> listViewDocumentsRowList =
                          snapshot.data!;

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewDocumentsRowList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewDocumentsRow =
                              listViewDocumentsRowList[listViewIndex];
                          return wrapWithModel(
                            model: _model.displayTreeModels.getModel(
                              listViewDocumentsRow.nodeID.toString(),
                              listViewIndex,
                            ),
                            updateCallback: () => safeSetState(() {}),
                            child: DisplayTreeWidget(
                              key: Key(
                                'Keyyla_${listViewDocumentsRow.nodeID.toString()}',
                              ),
                              node: listViewDocumentsRow,
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
