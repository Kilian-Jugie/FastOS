#pragma once
#include <FastDefines.h>
#include <string.h>

FASTOS_NAMESPACE_BEGIN

constexpr uint16_t STATIC_ERROR_MAX_DESC_LENGTH = 128;
constexpr uint16_t STATIC_ERROR_MAX_FILE_LENGTH = 128;
constexpr uint16_t STATIC_ERROR_HANDLER_MAX_ERROR = 8;

#define FASTOS_STATIC_ERROR_THROW(handlerptr, desc) handlerptr->add(__LINE__, __FILE__, desc)

class FastStaticError {
	uint16_t m_Line;
	char m_Desc[STATIC_ERROR_MAX_DESC_LENGTH];
	char m_File[STATIC_ERROR_MAX_FILE_LENGTH];
public:
	FastStaticError() = default;

	inline void set(uint16_t line, const char* file, const char* desc) {
		m_Line = line;
		size_t len{ strlen(desc) };

		strcpy(m_Desc, desc, len < STATIC_ERROR_MAX_DESC_LENGTH ? len : STATIC_ERROR_MAX_DESC_LENGTH);

		len = strlen(file);

		strcpy(m_File, file, len < STATIC_ERROR_MAX_FILE_LENGTH ? len : STATIC_ERROR_MAX_FILE_LENGTH);
	}

};

class FastStaticErrorHandler {
	using logFnc_t = void(*)(uint16_t, const char*, const char*);

	FastStaticError m_Errors[STATIC_ERROR_HANDLER_MAX_ERROR];
	uint16_t m_ErrorIndex;
	logFnc_t m_LogFnc;
	
public:
	FastStaticErrorHandler() : m_ErrorIndex{0} {}

	void add(uint16_t line, const char* file, const char* desc) {
		if (m_LogFnc) m_LogFnc(line, file, desc);
		m_Errors[m_ErrorIndex++].set(line, file, desc);
	}

	void setLogFnc(logFnc_t logFnc) {
		m_LogFnc = logFnc;
	}
};

FASTOS_NAMESPACE_END
