
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
(assert (not (= l3 Nil)) )
(assert (and (is-Cons Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (not (= l2 l1)) )
(assert (and (= l1 Nil) (is-Cons l0)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l0 l3) (= l0 l2) (= l3 l3) (is-Nil l0)) )
(check-sat)
