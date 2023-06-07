
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
(assert (and (= l2 Nil) (= l2 Nil) (= l1 Nil) (= l2 Nil)) )
(assert (is-Cons l1) )
(assert (and (= l1 Nil) (= l1 Nil) (= l3 l1)) )
(assert (or (= l0 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (is-Cons Nil) (is-Nil l1)) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
