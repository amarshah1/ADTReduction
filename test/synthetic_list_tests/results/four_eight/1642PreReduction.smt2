
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
(assert (not (is-Cons l1)) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Cons Nil) (is-Nil l2)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (and (= l3 Nil) (is-Cons l2)) )
(assert (= l1 Nil) )
(assert (and (= l1 Nil) (= l2 l1) (= l1 l2)) )
(assert (not (= l1 Nil)) )
(check-sat)
