import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start schoology Group Code

class SchoologyGroup {
  static String baseUrl = 'https://api.schoology.com/v1';
  static Map<String, String> headers = {
    'Authorization': 'OAuth realm=Schoology API',
    'oauth_consumer_key': 'e6feb35f0580dbe3032bd739d31423670653fe2fc',
    'oauth_signature': 'e5e725fa325fc24f26bc37e0672d5d6d',
  };
  static ScoolCall scoolCall = ScoolCall();
}

class ScoolCall {
  Future<ApiCallResponse> call({
    String? oauthNonce = 'kllo9940pd9333jh',
    String? oauthTimestamp = '1200376800',
  }) async {
    final ffApiRequestBody = '''
{
  "title": "Example school name",
  "address1": "750 West Road",
  "city": "New York",
  "state": "New York"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'scool',
      apiUrl: '${SchoologyGroup.baseUrl}/schools',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'OAuth realm=Schoology API',
        'oauth_consumer_key': 'e6feb35f0580dbe3032bd739d31423670653fe2fc',
        'oauth_signature': 'e5e725fa325fc24f26bc37e0672d5d6d',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End schoology Group Code

class AcccestokenCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'acccestoken',
      apiUrl: 'https://www.schoology.com/oauth/authorize',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'oauth_consumer_key': "e6feb35f0580dbe3032bd739d31423670653fe2fc",
        'oauth_nonce': "kllo9940pd9333jh",
        'oauth_timestamp': "1200376800",
        'oauth_signature_method': "PLAINTEXT",
        'oauth_version': "1.0",
        'oauth_signature': "e5e725fa325fc24f26bc37e0672d5d6d%26",
        'Authorization: OAuth realm': "Schoology API",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class OpenAiCall {
  static Future<ApiCallResponse> call({
    String? course = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "gpt-4",
  "messages": [
    {
      "role": "system",
      "content": "As a teacher, your task is to create a comprehensive course on ${course} . This course should cater to students with varying levels of experience, from beginners to intermediate learners. The goal is to provide a structured and engaging learning experience that covers fundamental concepts and practical applications of Python.Course TitleChoose a catchy and informative title for your Python course.Course Overview:Provide a brief overview of the course content.Outline the key topics and modules you plan to cover.Target Audience:Specify the target audience for this course (e.g., beginners, students with some programming experience, etc.).Learning Objectives:Clearly define the learning objectives for the course.Enumerate the skills and knowledge that students should acquire by the end of the course.Course Structure:Divide the course into logical sections or modules.Outline the content, exercises, and projects for each section.Assessment Methods:Describe how you plan to assess the progress and understanding of students.Include quizzes, assignments, and a final projectResources:Identify recommended textbooks, online resources, and tools that will complement the course material."
    },
    {
      "role": "user",
      "content": " write a course"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'open ai',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class OpenAiForAssigmentCall {
  static Future<ApiCallResponse> call({
    String? course = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "gpt-4",
  "messages": [
    {
      "role": "system",
      "content": "Design a comprehensive assignment that encourages students to delve deep into a specific topic of study. Whether it's a scientific concept, historical event, literature analysis, or any other subject area, the goal is to foster critical thinking, research skills, and the ability to articulate findings.Topic Selection:Select a broad topic relevant to the course or module. Ensure that it aligns with the learning objectives.Research Tasks:Define specific research tasks that students need to undertake. This may include literature reviews, case studies, experiments, or historical analyses Critical Analysis:Instruct students to critically analyze the information gathered. Encourage them to identify key themes, patterns, or significant elements related to the chosen topic.Creative Expression (Optional):Include an optional creative component where students can express their understanding through mediums such as artwork, poetry, or multimedia presentations.Synthesis of Information:Task students with synthesizing the information gathered into a coherent and well-organized document. Emphasize the importance of clear structure and logical flow.Submission Guidelines:Specify the format for submission based on the nature of the assignment (e.g., essay, research paper, presentation slides).Include a clear rubric outlining the criteria for evaluation. Consider aspects like research depth, critical analysis, and creativity.Provide guidance on citing sources appropriately and avoiding plagiarism.Assessment Criteria:The assignment will be assessed based on:Research Depth: The extent to which students explore and comprehend the chosen topic.Critical Analysis: The ability to critically assess and interpret information.Synthesis: The effectiveness of synthesizing information into a cohesive document.Creativity (if applicable): The quality and relevance of any optional creative components.Clarity of Expression: The clarity and coherence of the student's expression."
    },
    {
      "role": "user",
      "content": " write a ${course} assigment"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'open ai for assigment',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class OpenAiForSubmitAssigmentCall {
  static Future<ApiCallResponse> call({
    String? assigment = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "gpt-4",
  "messages": [
    {
      "role": "system",
      "content": " you are helpful assistant that help student solve thier assigment,just return the answer "
    },
    {
      "role": "user",
      "content": "${assigment}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'open ai for submit  assigment ',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
