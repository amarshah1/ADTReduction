
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
(assert (is-Cons l3) )
(assert (and (= l0 Nil) (= l2 Nil) (is-Cons l1)) )
(assert (= l2 l0) )
(assert (not (= l3 l0)) )
(assert (or (is-Nil l0) (= l1 Nil) (is-Cons Nil)) )
(assert (and (= l1 Nil) (= l3 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (= l0 Nil)) )
(assert (= l3 Nil) )
(check-sat)
