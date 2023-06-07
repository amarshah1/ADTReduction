
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (and (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (= l3 l3) (= l1 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (not (= l0 l0)) )
(assert (not (= l3 l0)) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (= l3 l0)) )
(assert (is-Nil Nil) )
(check-sat)
