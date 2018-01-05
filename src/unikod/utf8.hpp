#pragma once

#include <string>
#include <vector>
#include <array>


namespace unikod{



/**
 * @brief Iterator to iterate through utf-8 encoded unicode characters.
 */
class Utf8Iterator{
	char32_t c = 0;
	const std::uint8_t* n = nullptr;

public:
	/**
	 * @brief Create undefined iterator.
     */
	Utf8Iterator(){}

	/**
	 * @brief Create iterator pointing to the begin of the given utf-8 encoded string.
     * @param begin - pointer to the first byte of the null-terminated utf-8 encoded string.
     */
	Utf8Iterator(const char* begin);

	/**
	 * @brief Get current unicode character.
     * @return unicode value of the character this interator is currently pointing to.
     */
	char32_t character()const noexcept{
		return this->c;
	}

	//no operator*() because it usually returns reference, don't want to break this contract.
	
	/**
	 * @brief Prefix increment.
	 * Move iterator to the next character in the string.
	 * If iterator points to the end of the string before this operation then the result of this operation is undefined.
     * @return reference to this iterator object.
     */
	Utf8Iterator& operator++()noexcept;

	//no postfix ++ operator, there is no need in it.

	/**
	 * @brief Check if iterator points to the end of the string.
     * @return true if iterator points to the end of the string.
	 * @return false otherwise.
     */
	bool isEnd()const noexcept{
		return this->c == 0;
	}
};




//TODO: doxygen
std::u32string toUtf32(Utf8Iterator str);



//TODO: doxygen
inline std::u32string toUtf32(const char* str){
	return toUtf32(Utf8Iterator(str));
}



//TODO: doxygen
inline std::u32string toUtf32(const std::string& str){
	return toUtf32(str.c_str());
}

/**
 * @brief Convert UTF-32 character to UTF-8.
 * @param c - character to convert.
 * @return Zero-terminated array of bytes representing a UTF-8 character.
 */
std::array<char, 7> toUtf8(char32_t c);


}
