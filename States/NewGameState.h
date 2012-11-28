#ifndef FALLTERGEIST_NEWGAMESTATE_H
#define FALLTERGIEST_NEWGAMESTATE_H

#include "Engine/State.h"
#include "Engine/Surface.h"

namespace Falltergeist
{
class GcdFileType;
class Surface;
class SurfaceSet;
class TextArea;

class NewGameState : public State
{
protected:
    SurfaceSet * _characterImages;
    TextArea * _textStats1;
    TextArea * _textBio;
    unsigned char _selectedCharacter;
public:    
    NewGameState(Game * game);
    virtual ~NewGameState();
    void init();
    void think();
    void onBackButtonClick();
    void onPrevCharacterButtonClick();
    void onNextCharacterButtonClick();
};

}
#endif // FALLTERGEIST_NEWGAMESTATE_H