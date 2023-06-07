
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
(assert (= l3 Nil) )
(assert (= l3 l0) )
(assert (and (= l2 Nil) (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(assert (and (= l0 l0) (= l1 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (= l2 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
